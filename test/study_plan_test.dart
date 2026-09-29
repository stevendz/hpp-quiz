import 'package:flutter_test/flutter_test.dart';
import 'package:hpp_quiz/data/all_questions.dart';
import 'package:hpp_quiz/services/reminders.dart';
import 'package:hpp_quiz/services/storage_service.dart';
import 'package:hpp_quiz/services/study_plan.dart';

void main() {
  group('Kalendertage', () {
    test('zählen über die Zeitumstellung hinweg ganze Tage', () {
      expect(daysBetween(DateTime(2026, 3, 28), DateTime(2026, 3, 30)), 2);
      expect(daysBetween(DateTime(2026, 10, 24, 23), DateTime(2026, 10, 26, 1)), 2);
      expect(daysBetween(DateTime(2026, 9, 29), DateTime(2026, 9, 29)), 0);
    });

    test('Formatierung', () {
      expect(formatShortDate(DateTime(2026, 10, 28)), 'Mi, 28.10.2026');
      expect(formatDayMonth(DateTime(2026, 3, 4)), '4. März');
      expect(formatTime(18 * 60 + 5), '18:05');
      expect(questionsLabel(1), '1 Frage');
      expect(daysLabel(3), '3 Tage');
    });
  });

  group('Tagesziel', () {
    test('verteilt die offenen Fragen auf die Tage bis zur Prüfung', () {
      expect(dailyGoal(560, 30), 19);
      expect(dailyGoal(100, 3), 34);
    });

    test('mindestens 10 Fragen, am Prüfungstag keins', () {
      expect(dailyGoal(5, 20), minDailyGoal);
      expect(dailyGoal(0, 20), minDailyGoal);
      expect(dailyGoal(300, 0), 0);
      expect(dailyGoal(300, -2), 0);
    });

    test('bleibt über den Tag fest, auch wenn Fragen gelernt werden', () {
      final now = DateTime(2026, 9, 29, 10);
      final plan = StudyPlan(examDate: DateTime(2026, 10, 29));
      final log = const StudyLog().withSnapshot(now, 300);
      expect(dailyGoal(log.remainingAtDayStart(now, 250), plan.daysLeft(now)), 10);
      // Neuer Tag: kein Stand mehr, das Ziel richtet sich nach den aktuell offenen Fragen.
      final tomorrow = DateTime(2026, 9, 30, 9);
      expect(log.remainingAtDayStart(tomorrow, 250), 250);
      expect(identical(log.withSnapshot(now, 1), log), isTrue);
      expect(log.withSnapshot(now, 1, force: true).snapshotRemaining, 1);
    });
  });

  group('Lernserie', () {
    final today = DateTime(2026, 3, 30, 12); // Tag nach der Umstellung auf Sommerzeit
    StudyLog logWith(List<int> daysAgo) => StudyLog(answersByDay: {
          for (final d in daysAgo) dayKey(DateTime(today.year, today.month, today.day - d)): 5,
        });

    test('zählt aufeinanderfolgende Tage bis heute', () {
      expect(logWith([0, 1, 2]).streak(today), 3);
      expect(logWith([0, 2, 3]).streak(today), 1);
    });

    test('reißt nicht, solange heute noch nichts beantwortet ist', () {
      expect(logWith([1, 2]).streak(today), 2);
      expect(logWith([2, 3]).streak(today), 0);
      expect(const StudyLog().streak(today), 0);
    });

    test('Antworten addieren sich und alte Einträge fallen weg', () {
      var log = StudyLog(answersByDay: {'2025-01-01': 3});
      log = log.addAnswers(today, 4).addAnswers(today, 2);
      expect(log.answersOn(today), 6);
      expect(log.answersByDay.containsKey('2025-01-01'), isFalse);
      expect(log.lastActiveDay, DateTime(2026, 3, 30));
    });
  });

  test('Lernplan und Verlauf überstehen JSON', () {
    final plan = StudyPlan(examDate: DateTime(2026, 10, 28, 15), remindersEnabled: false, reminderMinutes: 7 * 60);
    expect(StudyPlan.fromJson(plan.toJson()), plan);
    expect(plan.examDate, DateTime(2026, 10, 28));

    final log = const StudyLog().withSnapshot(DateTime(2026, 9, 29), 400).addAnswers(DateTime(2026, 9, 29), 12);
    final restored = StudyLog.fromJson(log.toJson());
    expect(restored.answersOn(DateTime(2026, 9, 29)), 12);
    expect(restored.remainingAtDayStart(DateTime(2026, 9, 29, 20), 380), 400);
  });

  test('Status für die Startseite', () {
    final state = QuizState.defaultState()
      ..questionStats = {allQuestions.first.id: QuestionStats(attempts: 1, correctCount: 1, lastCorrect: true, correctStreak: 1)};
    final now = DateTime(2026, 9, 29, 10);
    final status = StudyStatus.of(StudyPlan(examDate: DateTime(2026, 10, 29)), const StudyLog(), state, now);
    expect(status.daysLeft, 30);
    expect(status.mastered, 1);
    expect(status.remaining, status.total - 1);
    expect(status.goal, dailyGoal(status.total - 1, 30));
    expect(status.goalReached, isFalse);
  });

  group('Erinnerungen', () {
    final morning = DateTime(2026, 9, 29, 10);
    final plan = StudyPlan(examDate: DateTime(2026, 10, 29));

    List<Reminder> plan0({
      StudyPlan? studyPlan,
      StudyLog log = const StudyLog(),
      DateTime? now,
      int mastered = 100,
      int reviewCount = 12,
    }) =>
        planReminders(
          plan: studyPlan ?? plan,
          log: log,
          now: now ?? morning,
          total: 560,
          mastered: mastered,
          reviewCount: reviewCount,
        );

    test('keine, wenn ausgeschaltet', () {
      expect(plan0(studyPlan: plan.copyWith(remindersEnabled: false)), isEmpty);
    });

    test('täglich zur gewählten Uhrzeit, bis zum Prüfungsmorgen', () {
      final reminders = plan0();
      expect(reminders.first.at, DateTime(2026, 9, 29, 18));
      expect(reminders[1].at, DateTime(2026, 9, 30, 18));
      expect(reminders.last.at, DateTime(2026, 10, 29, 7, 30));
      expect(reminders.last.kind, 'exam_day');
      expect(reminders.map((r) => r.id).toSet(), hasLength(reminders.length));
      expect(reminders.every((r) => r.at.isAfter(morning)), isTrue);
      expect(reminders.every((r) => r.at.isBefore(DateTime(2026, 10, 29, 8))), isTrue);
    });

    test('Zahlen im Text passen zum Lernstand', () {
      final first = plan0().first; // 460 offen, 30 Tage → 16 pro Tag
      expect('${first.title} ${first.body}', contains('16 Fragen'));
    });

    test('Meilensteine: eine Woche und einen Tag vor der Prüfung', () {
      final reminders = plan0();
      final week = reminders.firstWhere((r) => r.at == DateTime(2026, 10, 22, 18));
      final dayBefore = reminders.firstWhere((r) => r.at == DateTime(2026, 10, 28, 18));
      expect(week.kind, 'week_before');
      expect(dayBefore.kind, 'day_before');
      expect(dayBefore.body, contains('12 Fragen'));
    });

    test('heute nicht mehr, wenn die Uhrzeit vorbei oder das Tagesziel erreicht ist', () {
      expect(plan0(now: DateTime(2026, 9, 29, 19)).first.at, DateTime(2026, 9, 30, 18));
      final done = const StudyLog().withSnapshot(morning, 460).addAnswers(morning, 16);
      expect(plan0(log: done).first.at, DateTime(2026, 9, 30, 18));
    });

    test('heute angefangen: nennt, was bis zum Tagesziel fehlt', () {
      final started = const StudyLog().withSnapshot(morning, 460).addAnswers(morning, 6);
      final first = plan0(log: started).first;
      expect(first.kind, 'goal_open');
      expect(first.title, 'Noch 10 Fragen bis zum Tagesziel');
    });

    test('Serie und Pause', () {
      final yesterday = DateTime(2026, 9, 28);
      final streakLog = const StudyLog().addAnswers(yesterday, 20).addAnswers(DateTime(2026, 9, 27), 20);
      expect(plan0(log: streakLog).first.kind, 'streak');
      expect(plan0(log: streakLog).first.title, '🔥 2 Tage in Folge');

      final pauseLog = const StudyLog().addAnswers(DateTime(2026, 9, 20), 20);
      expect(plan0(log: pauseLog).first.kind, 'comeback');
      expect(plan0(log: pauseLog).first.body, contains('Seit 9 Tagen'));
    });

    test('alle Fragen sicher', () {
      expect(plan0(mastered: 560).first.kind, 'all_mastered');
    });

    test('nach zwei Wochen nur noch jeden dritten Tag, höchstens 60', () {
      final far = plan0(studyPlan: StudyPlan(examDate: DateTime(2027, 9, 1)));
      expect(far, hasLength(maxReminders));
      final days = far.map((r) => daysBetween(morning, r.at)).toList();
      expect(days.take(dailyReminderDays), List.generate(dailyReminderDays, (i) => i));
      expect(days[dailyReminderDays], dailyReminderDays);
      expect(days[dailyReminderDays + 1], dailyReminderDays + sparseReminderInterval);
    });

    test('keine nach der Prüfung', () {
      expect(plan0(studyPlan: StudyPlan(examDate: DateTime(2026, 9, 20))), isEmpty);
      // Prüfung heute, Morgen-Mitteilung schon vorbei
      expect(plan0(studyPlan: StudyPlan(examDate: DateTime(2026, 9, 29))), isEmpty);
    });
  });
}
