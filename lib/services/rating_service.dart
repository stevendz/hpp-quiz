import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:in_app_review/in_app_review.dart';

class RatingService {
  // Numerische App-Store-ID aus App Store Connect (https://apps.apple.com/app/id6761376994).
  static const _iosAppStoreId = '6761376994';

  /// Zeigt die native Bewertungs-Abfrage (SKStoreReviewController / Play In-App Review).
  /// Die ist plattformseitig auf wenige Aufrufe pro Jahr limitiert und zeigt dann
  /// stillschweigend nichts mehr – daher als Fallback direkt der Store-Eintrag.
  static Future<void> requestReview() async {
    final inAppReview = InAppReview.instance;
    try {
      if (await inAppReview.isAvailable()) {
        await inAppReview.requestReview();
      } else {
        await inAppReview.openStoreListing(appStoreId: _iosAppStoreId);
      }
      FirebaseAnalytics.instance.logEvent(name: 'store_rating_requested');
    } catch (e) {
      debugPrint('Store-Bewertung konnte nicht geöffnet werden: $e');
    }
  }
}
