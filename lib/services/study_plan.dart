import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/all_questions.dart';
import 'storage_service.dart';

/// Mindestens so viele Fragen pro Tag – auch wenn kaum noch etwas offen ist, hält Wiederholen das Wissen frisch.
const int minDailyGoal = 10;

/// Kalendertag ohne Uhrzeit (lokale Mitternacht).
DateTime dateOnly(DateTime t) => DateTime(t.year, t.month, t.day);

/// Ganze Kalendertage von [from] bis [to] – unabhängig von der Sommerzeit.
int daysBetween(DateTime from, DateTime to) =>
    DateTime.utc(to.year, to.month, to.day).difference(DateTime.utc(from.year, from.month, from.day)).inDays;

String dayKey(DateTime t) =>
    '${t.year.toString().padLeft(4, '0')}-${t.month.toString().padLeft(2, '0')}-${t.day.toString().padLeft(2, '0')}';

DateTime parseDayKey(String key) {
  final p = key.split('-').map(int.parse).toList();
  return DateTime(p[0], p[1], p[2]);
}

const _months = [
  'Januar', 'Februar', 'März', 'April', 'Mai', 'Juni',
  'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember',
];
const _weekdays = ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'];

/// „28. Oktober“
String formatDayMonth(DateTime d) => '${d.day}. ${_months[d.month - 1]}';

/// „Mi, 28.10.2026“
String formatShortDate(DateTime d) =>
    '${_weekdays[d.weekday - 1]}, ${d.day.toString().padLeft(2, '0')}.${d.month.toString().padLeft(2, '0')}.${d.year}';

/// „18:00“
String formatTime(int minutes) =>
    '${(minutes ~/ 60).toString().padLeft(2, '0')}:${(minutes % 60).toString().padLeft(2, '0')}';

/// „1 Frage“, „19 Fragen“
String questionsLabel(int n) => n == 1 ? '1 Frage' : '$n Fragen';

/// „1 Tag“, „23 Tage“
String daysLabel(int n) => n == 1 ? '1 Tag' : '$n Tage';

/// Prüfungsdatum und tägliche Erinnerung.
@immutable
class StudyPlan {
  final DateTime examDate;
  final bool remindersEnabled;

  /// Uhrzeit der Erinnerung in Minuten nach Mitternacht (18:00 → 1080).
  final int reminderMinutes;

  static const defaultReminderMinutes = 18 * 60;

  StudyPlan({required DateTime examDate, this.remindersEnabled = true, this.reminderMinutes = defaultReminderMinutes})
      : examDate = dateOnly(examDate);

  StudyPlan copyWith({DateTime? examDate, bool? remindersEnabled, int? reminderMinutes}) => StudyPlan(
        examDate: examDate ?? this.examDate,
        remindersEnabled: remindersEnabled ?? this.remindersEnabled,
        reminderMinutes: reminderMinutes ?? this.reminderMinutes,
      );

  /// Tage bis zur Prüfung: 0 = heute, negativ = vorbei.
  int daysLeft(DateTime now) => daysBetween(now, examDate);

  Map<String, dynamic> toJson() => {
        'examDate': dayKey(examDate),
        'reminders': remindersEnabled,
        'reminderMinutes': reminderMinutes,
      };

  factory StudyPlan.fromJson(Map<String, dynamic> json) => StudyPlan(
        examDate: parseDayKey(json['examDate']),
        remindersEnabled: json['reminders'] ?? true,
        reminderMinutes: json['reminderMinutes'] ?? defaultReminderMinutes,
      );

  @override
  bool operator ==(Object other) =>
      other is StudyPlan &&
      other.examDate == examDate &&
      other.remindersEnabled == remindersEnabled &&
      other.reminderMinutes == reminderMinutes;

  @override
  int get hashCode => Object.hash(examDate, remindersEnabled, reminderMinutes);
}

/// Beantwortete Fragen pro Tag und die offenen Fragen zu Tagesbeginn.
///
/// Der Stand zu Tagesbeginn hält das Tagesziel über den Tag fest: Es sinkt nicht mit jeder richtigen Antwort,
/// sondern wird erst am nächsten Tag neu berechnet.
@immutable
class StudyLog {
  /// Tag („2026-09-29“) → Anzahl beantworteter Fragen.
  final Map<String, int> answersByDay;
  final String? snapshotDay;
  final int? snapshotRemaining;

  const StudyLog({this.answersByDay = const {}, this.snapshotDay, this.snapshotRemaining});

  int answersOn(DateTime day) => answersByDay[dayKey(day)] ?? 0;

  DateTime? get lastActiveDay {
    final active = answersByDay.entries.where((e) => e.value > 0).map((e) => e.key).toList()..sort();
    return active.isEmpty ? null : parseDayKey(active.last);
  }

  /// Tage in Folge mit mindestens einer Antwort. Zählt bis heute, oder bis gestern, solange heute noch nichts beantwortet ist.
  int streak(DateTime now) {
    var day = dateOnly(now);
    if (answersOn(day) == 0) day = DateTime(day.year, day.month, day.day - 1);
    var count = 0;
    while (answersOn(day) > 0) {
      count++;
      day = DateTime(day.year, day.month, day.day - 1);
    }
    return count;
  }

  /// Offene Fragen zu Beginn von [now]s Tag; ohne Stand für heute die aktuell offenen.
  int remainingAtDayStart(DateTime now, int remainingNow) =>
      snapshotDay == dayKey(now) ? snapshotRemaining ?? remainingNow : remainingNow;

  /// Hält die offenen Fragen zu Tagesbeginn fest, falls für heute noch kein Stand existiert.
  StudyLog withSnapshot(DateTime now, int remaining, {bool force = false}) {
    if (!force && snapshotDay == dayKey(now)) return this;
    return StudyLog(answersByDay: answersByDay, snapshotDay: dayKey(now), snapshotRemaining: remaining);
  }

  /// Zählt [count] Antworten für heute; Einträge älter als ein Jahr fallen weg.
  StudyLog addAnswers(DateTime now, int count) {
    final key = dayKey(now);
    final oldest = dayKey(DateTime(now.year - 1, now.month, now.day));
    return StudyLog(
      answersByDay: {
        for (final e in answersByDay.entries)
          if (e.key.compareTo(oldest) >= 0) e.key: e.value,
        key: (answersByDay[key] ?? 0) + count,
      },
      snapshotDay: snapshotDay,
      snapshotRemaining: snapshotRemaining,
    );
  }

  Map<String, dynamic> toJson() => {
        'answersByDay': answersByDay,
        if (snapshotDay != null) 'snapshotDay': snapshotDay,
        if (snapshotRemaining != null) 'snapshotRemaining': snapshotRemaining,
      };

  factory StudyLog.fromJson(Map<String, dynamic> json) => StudyLog(
        answersByDay: {
          for (final e in ((json['answersByDay'] as Map<String, dynamic>?) ?? {}).entries) e.key: e.value as int,
        },
        snapshotDay: json['snapshotDay'],
        snapshotRemaining: json['snapshotRemaining'],
      );
}

/// Fragen pro Tag, damit bis zum Vortag der Prüfung alle offenen Fragen sitzen.
int dailyGoal(int remaining, int daysLeft) {
  if (daysLeft <= 0) return 0;
  return max(minDailyGoal, (remaining / daysLeft).ceil());
}

int totalQuestionCount() => allQuestions.map((q) => q.id).toSet().length;

/// Fragen, die zuletzt richtig beantwortet wurden (nach einem Fehler zweimal in Folge).
int masteredQuestionCount(QuizState state) => allQuestions
    .map((q) => q.id)
    .toSet()
    .where((id) => (state.questionStats[id]?.attempts ?? 0) > 0 && state.questionStats[id]!.lastCorrect)
    .length;

/// Summe aller Antworten – die Differenz zweier Stände ergibt, wie viele Fragen gerade beantwortet wurden.
int totalAttempts(QuizState state) => state.questionStats.values.fold(0, (sum, s) => sum + s.attempts);

/// Alles, was die Startseite zum Lernplan anzeigt.
@immutable
class StudyStatus {
  final int daysLeft;
  final int total;
  final int mastered;
  final int goal;
  final int answeredToday;
  final int streak;

  const StudyStatus({
    required this.daysLeft,
    required this.total,
    required this.mastered,
    required this.goal,
    required this.answeredToday,
    required this.streak,
  });

  int get remaining => total - mastered;
  bool get goalReached => goal > 0 && answeredToday >= goal;

  factory StudyStatus.of(StudyPlan plan, StudyLog log, QuizState state, DateTime now) {
    final total = totalQuestionCount();
    final mastered = masteredQuestionCount(state);
    final daysLeft = plan.daysLeft(now);
    return StudyStatus(
      daysLeft: daysLeft,
      total: total,
      mastered: mastered,
      goal: dailyGoal(log.remainingAtDayStart(now, total - mastered), daysLeft),
      answeredToday: log.answersOn(now),
      streak: log.streak(now),
    );
  }
}

class StudyPlanStorage {
  static const _planKey = 'hpp-study-plan';
  static const _logKey = 'hpp-study-log';

  static Future<StudyPlan?> loadPlan() async {
    try {
      final raw = (await SharedPreferences.getInstance()).getString(_planKey);
      if (raw != null) return StudyPlan.fromJson(jsonDecode(raw));
    } catch (e) {
      debugPrint('Lernplan konnte nicht geladen werden: $e');
    }
    return null;
  }

  static Future<void> savePlan(StudyPlan? plan) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (plan == null) {
        await prefs.remove(_planKey);
      } else {
        await prefs.setString(_planKey, jsonEncode(plan.toJson()));
      }
    } catch (e) {
      debugPrint('Lernplan konnte nicht gespeichert werden: $e');
    }
  }

  static Future<StudyLog> loadLog() async {
    try {
      final raw = (await SharedPreferences.getInstance()).getString(_logKey);
      if (raw != null) return StudyLog.fromJson(jsonDecode(raw));
    } catch (e) {
      debugPrint('Lernverlauf konnte nicht geladen werden: $e');
    }
    return const StudyLog();
  }

  static Future<void> saveLog(StudyLog log) async {
    try {
      await (await SharedPreferences.getInstance()).setString(_logKey, jsonEncode(log.toJson()));
    } catch (e) {
      debugPrint('Lernverlauf konnte nicht gespeichert werden: $e');
    }
  }
}
