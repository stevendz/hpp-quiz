import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FeedbackService {
  static const _startCountKey = 'app_start_count';
  static const _lastShownKey = 'feedback_prompt_last_shown';
  static const _collection = 'feedback';

  static const _promptStartThreshold = 5;
  static const _promptInterval = Duration(days: 30);
  static const _writeTimeout = Duration(seconds: 10);
  static const maxFeedbackLength = 500;

  /// Zählt den App-Start hoch und meldet, ob der Feedback-Dialog fällig ist:
  /// beim 5. Start, danach frühestens 30 Tage nach der letzten Abfrage.
  static Future<bool> registerStartAndCheckPrompt() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final startCount = (prefs.getInt(_startCountKey) ?? 0) + 1;
      await prefs.setInt(_startCountKey, startCount);

      final lastShownMillis = prefs.getInt(_lastShownKey);
      if (lastShownMillis == null) return startCount >= _promptStartThreshold;

      final lastShown = DateTime.fromMillisecondsSinceEpoch(lastShownMillis);
      return DateTime.now().difference(lastShown) >= _promptInterval;
    } catch (e) {
      debugPrint('Feedback-Prüfung fehlgeschlagen: $e');
      return false;
    }
  }

  static Future<void> markPromptShown() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_lastShownKey, DateTime.now().millisecondsSinceEpoch);
    } catch (e) {
      debugPrint('Feedback-Zeitpunkt konnte nicht gespeichert werden: $e');
    }
  }

  static Future<bool> submitFeedback({required bool satisfied, required String text}) async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      final stored = await _write({
        'satisfied': satisfied,
        'text': text.trim(),
        'createdAt': FieldValue.serverTimestamp(),
        'appVersion': packageInfo.version,
      });
      if (!stored) return false;

      // Auch bei manuell geöffnetem Formular: nach dem Absenden 30 Tage Ruhe.
      await markPromptShown();

      final params = {'satisfied': satisfied.toString()};
      debugPrint('[Analytics] feedback_submitted: $params');
      FirebaseAnalytics.instance.logEvent(name: 'feedback_submitted', parameters: params);
      return true;
    } catch (e) {
      debugPrint('Feedback konnte nicht gesendet werden: $e');
      return false;
    }
  }

  static Future<bool> _write(Map<String, dynamic> entry) async {
    final write = FirebaseFirestore.instance.collection(_collection).add(entry);
    // Firestore puffert Schreibvorgänge lokal – offline kommt die Server-Bestätigung
    // erst beim nächsten Sync. Ohne Timeout würde der Sende-Button ewig laden.
    unawaited(write.then((_) {}, onError: (Object e) => debugPrint('Feedback-Sync fehlgeschlagen: $e')));
    try {
      await write.timeout(_writeTimeout);
      return true;
    } on TimeoutException {
      // Der Eintrag liegt im lokalen Cache und wird später übertragen.
      return true;
    }
  }
}
