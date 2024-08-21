import 'package:core_model/feed.dart';
import 'package:core_network/feed.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_feed_repository.g.dart';

@riverpod
NewsFeedRepository newsFeedRepository(NewsFeedRepositoryRef ref) =>
    NewsFeedRepository(
      remote: ref.watch(newsFeedRemoteDataSourceProvider),
    );

/// ニュースのリポジトリ
class NewsFeedRepository {
  NewsFeedRepository({
    required NewsFeedRemoteDataSource remote,
  }) : _remote = remote;

  final NewsFeedRemoteDataSource _remote;

  Future<List<NewsFeed>> getAll() async =>
      (await _remote.getNewsList()).map((e) => e.toNewsFeed()).toList();
}

extension on NetworkNewsFeed {
  NewsFeed toNewsFeed() => NewsFeed(
        slug: slug,
        title: title,
        publishedAt: publishedAt,
        excerpt: excerpt,
        coverImageUrl: coverImageUrl,
      );
}
