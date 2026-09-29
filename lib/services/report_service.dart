import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../models/question.dart';
import 'analytics.dart';
import 'feedback_service.dart';

/// Meldungen zu fehlerhaften Fragen. Landen anonym in Firestore (Collection `question_reports`,
/// siehe firestore.rules) und werden über die Firebase Console ausgewertet.
class ReportService {
  static const _collection = 'question_reports';
  static const maxTextLength = 500;

  /// Mögliche Gründe – die Schlüssel sind in den Firestore-Regeln hinterlegt.
  static const reasons = {
    'answer': 'Lösung ist falsch',
    'explanation': 'Erklärung ist unklar',
    'typo': 'Tippfehler',
    'other': 'Sonstiges',
  };

  static Future<bool> submit({required Question question, required String reason, required String text}) async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      final stored = await FeedbackService.writeBuffered(_collection, {
        'questionId': question.id,
        'exam': question.exam,
        'reason': reason,
        'text': text.trim(),
        'createdAt': FieldValue.serverTimestamp(),
        'appVersion': packageInfo.version,
      });
      if (!stored) return false;
      logEvent('question_reported', {'question_id': question.id, 'reason': reason});
      return true;
    } catch (e) {
      debugPrint('Meldung konnte nicht gesendet werden: $e');
      return false;
    }
  }
}
