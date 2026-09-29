import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

/// Loggt ein Analytics-Event. Ohne initialisiertes Firebase (z. B. in Tests) bleibt es bei der Debug-Ausgabe.
void logEvent(String name, Map<String, Object> params) {
  debugPrint('[Analytics] $name: $params');
  try {
    FirebaseAnalytics.instance.logEvent(name: name, parameters: params);
  } catch (e) {
    debugPrint('Analytics nicht verfügbar: $e');
  }
}
