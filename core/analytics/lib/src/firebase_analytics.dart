import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_analytics.g.dart';

/// FirebaseAnalytics instance
@Riverpod(keepAlive: true)
FirebaseAnalytics firebaseAnalytics(FirebaseAnalyticsRef ref) {
  throw UnimplementedError('firebaseAnalytics');
}

/// Firebase Analytics
List<Override> firebaseAnalyticsProviders({
  required FirebaseAnalytics firebaseAnalytics,
}) =>
    <Override>[
      firebaseAnalyticsProvider.overrideWithValue(firebaseAnalytics),
    ];
