import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_analytics.g.dart';

@Riverpod(keepAlive: true)
SampleAnalytics sampleAnalytics(SampleAnalyticsRef ref) =>
    throw UnimplementedError('sampleAnalytics');

/// サンプル機能の Analytics Logger
abstract interface class SampleAnalytics {
  /// サンプル一覧画面表示イベントを記録する
  Future<void> trackShowSampleListPageEvent();

  /// サンプル詳細画面表示イベントを記録する
  Future<void> trackShowSampleDetailPageEvent();
}
