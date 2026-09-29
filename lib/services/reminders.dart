import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'analytics.dart';
import 'exam_modes.dart';
import 'study_plan.dart';

/// Eine geplante Erinnerung. [kind] landet als Payload in Analytics, wenn sie geöffnet wird.
@immutable
class Reminder {
  final int id;
  final DateTime at;
  final String title;
  final String body;
  final String kind;

  const Reminder({required this.id, required this.at, required this.title, required this.body, required this.kind});

  @override
  String toString() => '$at [$kind] $title – $body';
}

/// Die ersten zwei Wochen täglich, danach jeden dritten Tag: Wer die App länger nicht öffnet, bekommt weniger
/// Nachrichten, statt sie ganz abzuschalten. Jeder App-Start plant neu – aktive Nutzer werden täglich erinnert.
const int dailyReminderDays = 14;
const int sparseReminderInterval = 3;

/// iOS behält höchstens 64 geplante Mitteilungen.
const int maxReminders = 60;

/// Uhrzeit der Mitteilung am Prüfungstag.
const int examMorningMinutes = 7 * 60 + 30;

/// Plant die Erinnerungen bis zur Prüfung. Die Inhalte stehen beim Planen fest: Sie gehen davon aus, dass bis dahin
/// nicht weitergelernt wird – wer lernt, öffnet die App, und dann wird ohnehin neu geplant.
List<Reminder> planReminders({
  required StudyPlan plan,
  required StudyLog log,
  required DateTime now,
  required int total,
  required int mastered,
  required int reviewCount,
}) {
  if (!plan.remindersEnabled) return const [];
  final today = dateOnly(now);
  final remaining = total - mastered;
  final lastActive = log.lastActiveDay;
  final reminders = <Reminder>[];

  for (var i = 0; reminders.length < maxReminders; i++) {
    final day = DateTime(today.year, today.month, today.day + i);
    final daysLeft = plan.daysLeft(day);
    if (daysLeft < 0) break;

    if (daysLeft == 0) {
      final at = DateTime(day.year, day.month, day.day, examMorningMinutes ~/ 60, examMorningMinutes % 60);
      if (at.isAfter(now)) {
        reminders.add(Reminder(
          id: i + 1,
          at: at,
          title: 'Heute ist Prüfungstag 🍀',
          body: mastered > 0
              ? 'Du hast ${questionsLabel(mastered)} sicher drauf. Lies jede Frage in Ruhe – viel Erfolg!'
              : 'Lies jede Frage in Ruhe und vertrau auf dein Wissen – viel Erfolg!',
          kind: 'exam_day',
        ));
      }
      break;
    }

    // Die letzten Tage vor der Prüfung immer erinnern, sonst nach zwei Wochen seltener.
    final milestone = daysLeft == 1 || daysLeft == 7;
    if (i >= dailyReminderDays && !milestone && (i - dailyReminderDays) % sparseReminderInterval != 0) continue;

    final at = DateTime(day.year, day.month, day.day, plan.reminderMinutes ~/ 60, plan.reminderMinutes % 60);
    if (!at.isAfter(now)) continue;

    final isToday = i == 0;
    final goal = isToday
        ? dailyGoal(log.remainingAtDayStart(now, remaining), daysLeft)
        : dailyGoal(remaining, daysLeft);
    final answered = isToday ? log.answersOn(now) : 0;
    if (answered >= goal) continue; // Tagesziel schon erreicht – heute nicht mehr stören

    final message = reminderMessage(
      day: day,
      examDate: plan.examDate,
      daysLeft: daysLeft,
      goal: goal,
      answeredToday: answered,
      streak: isToday ? log.streak(now) : 0,
      inactiveDays: lastActive == null ? null : daysBetween(lastActive, day),
      total: total,
      mastered: mastered,
      reviewCount: reviewCount,
    );
    reminders.add(Reminder(id: i + 1, at: at, title: message.title, body: message.body, kind: message.kind));
  }
  return reminders;
}

/// Text einer Erinnerung: Meilensteine zuerst, dann Tagesstand, Serie und Pause, sonst abwechselnd nach Datum.
({String title, String body, String kind}) reminderMessage({
  required DateTime day,
  required DateTime examDate,
  required int daysLeft,
  required int goal,
  required int answeredToday,
  required int streak,
  required int? inactiveDays,
  required int total,
  required int mastered,
  required int reviewCount,
}) {
  final remaining = total - mastered;
  final left = 'noch ${daysLabel(daysLeft)} bis zur Prüfung';

  if (daysLeft == 1) {
    return (
      title: 'Morgen ist Prüfung 🍀',
      body: reviewCount > 0
          ? 'Geh heute noch einmal „Fehler & Merkliste“ durch (${questionsLabel(reviewCount)}) – und dann früh schlafen.'
          : 'Ein kurzer Durchgang zum Aufwärmen – und dann früh schlafen. Du schaffst das!',
      kind: 'day_before',
    );
  }
  if (daysLeft == 7) {
    return (
      title: 'Noch eine Woche bis zur Prüfung',
      body: 'Zeit für den Ernstfall: Simuliere einen Prüfungstag – 28 Fragen in ${examDaySeconds ~/ 60} Minuten.',
      kind: 'week_before',
    );
  }
  if (remaining == 0) {
    return (
      title: 'Alle $total Fragen sitzen 🎉',
      body: 'Halte dein Wissen frisch: ${questionsLabel(goal)} heute, $left.',
      kind: 'all_mastered',
    );
  }
  if (answeredToday > 0) {
    final open = goal - answeredToday;
    return (
      title: 'Noch ${questionsLabel(open)} bis zum Tagesziel',
      body: '$answeredToday von $goal hast du heute schon geschafft. Den Rest packst du auch!',
      kind: 'goal_open',
    );
  }
  if (streak >= 2) {
    return (
      title: '🔥 $streak Tage in Folge',
      body: 'Halte deine Serie: ${questionsLabel(goal)} heute, $left.',
      kind: 'streak',
    );
  }
  if (inactiveDays != null && inactiveDays >= 3) {
    return (
      title: 'Lust auf eine Lernrunde?',
      body: 'Seit $inactiveDays Tagen Pause – mit ${questionsLabel(goal)} heute bist du wieder im Plan.',
      kind: 'comeback',
    );
  }
  final pct = (mastered * 100 / total).round();
  return switch (daysBetween(DateTime(2000), day) % 3) {
    0 => (
        title: 'Noch ${daysLabel(daysLeft)} bis zur Prüfung',
        body: 'Mit ${questionsLabel(goal)} am Tag sitzen alle $remaining offenen Fragen bis zum ${formatDayMonth(examDate)}.',
        kind: 'countdown',
      ),
    1 => (
        title: 'Dein Tagesziel: ${questionsLabel(goal)}',
        body: mastered > 0
            ? '$mastered von $total Fragen sitzen schon ($pct %). Weiter so – $left.'
            : 'Fang heute an – $left.',
        kind: 'goal',
      ),
    _ => (
        title: 'Zeit für deine Lernrunde',
        body: 'Noch $remaining Fragen offen – mit ${questionsLabel(goal)} heute wird es jeden Tag weniger.',
        kind: 'remaining',
      ),
  };
}

/// Lokale Mitteilungen – ohne Server, alles wird auf dem Gerät geplant.
class ReminderService {
  static final _plugin = FlutterLocalNotificationsPlugin();
  static Future<bool>? _initialized;

  // Feste Zeitpunkte statt Uhrzeiten einer Zeitzone: Die lokale Uhrzeit rechnet Dart samt Sommerzeit um.
  static final _utc = tz.Location('UTC', [tz.minTime], [0], [tz.TimeZone.UTC]);

  static const _details = NotificationDetails(
    android: AndroidNotificationDetails(
      'study_reminders',
      'Lernerinnerungen',
      channelDescription: 'Tägliche Erinnerung an deinen Lernplan',
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
    ),
    // Während die App offen ist, nicht zusätzlich einblenden.
    iOS: DarwinNotificationDetails(presentAlert: false, presentBanner: false, presentList: false, presentSound: false),
  );

  static Future<bool> _init() => _initialized ??= () async {
        try {
          await _plugin.initialize(
            settings: const InitializationSettings(
              android: AndroidInitializationSettings('ic_notification'),
              // Berechtigung erst anfragen, wenn die Erinnerung eingeschaltet wird.
              iOS: DarwinInitializationSettings(
                requestAlertPermission: false,
                requestBadgePermission: false,
                requestSoundPermission: false,
              ),
            ),
            onDidReceiveNotificationResponse: (r) => logEvent('reminder_opened', {'kind': r.payload ?? ''}),
          );
          final launch = await _plugin.getNotificationAppLaunchDetails();
          if (launch?.didNotificationLaunchApp ?? false) {
            logEvent('reminder_opened', {'kind': launch!.notificationResponse?.payload ?? ''});
          }
          return true;
        } catch (e) {
          debugPrint('Mitteilungen nicht verfügbar: $e');
          return false;
        }
      }();

  /// Fragt die Erlaubnis für Mitteilungen an. true = erlaubt.
  static Future<bool> requestPermission() async {
    if (!await _init()) return false;
    try {
      final ios = _plugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();
      if (ios != null) return await ios.requestPermissions(alert: true, sound: true) ?? false;
      final android = _plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
      if (android != null) return await android.requestNotificationsPermission() ?? false;
    } catch (e) {
      debugPrint('Mitteilungs-Berechtigung fehlgeschlagen: $e');
    }
    return false;
  }

  /// Ersetzt alle geplanten Erinnerungen und entfernt bereits zugestellte.
  static Future<void> schedule(List<Reminder> reminders) async {
    if (!await _init()) return;
    try {
      await _plugin.cancelAll();
      for (final r in reminders) {
        await _plugin.zonedSchedule(
          id: r.id,
          title: r.title,
          body: r.body,
          payload: r.kind,
          scheduledDate: tz.TZDateTime.from(r.at, _utc),
          notificationDetails: _details,
          // „Gegen 18 Uhr“ genügt – exakte Alarme bräuchten eine eigene Berechtigung.
          androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        );
      }
      debugPrint('${reminders.length} Erinnerungen geplant${reminders.isEmpty ? '' : ', nächste: ${reminders.first}'}');
    } catch (e) {
      debugPrint('Erinnerungen konnten nicht geplant werden: $e');
    }
  }
}
