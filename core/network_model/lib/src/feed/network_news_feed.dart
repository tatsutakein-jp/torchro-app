import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_news_feed.freezed.dart';
part 'network_news_feed.g.dart';

/// サービスのお知らせ
///
/// {@category Model}
@freezed
class NetworkNewsFeed with _$NetworkNewsFeed {
  const factory NetworkNewsFeed({
    required String title,
    required String slug,
    required DateTime publishedAt,
    required String excerpt,
    required String? coverImageUrl,
  }) = _NetworkNewsFeed;

  factory NetworkNewsFeed.fromJson(Map<String, Object?> json) =>
      _$NetworkNewsFeedFromJson(json);
}
