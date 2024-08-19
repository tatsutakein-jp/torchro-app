import 'package:core_data/feed.dart';
import 'package:core_model/feed.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_feed_list_stream_use_case.g.dart';

/// サービスのお知らせ一覧を取得する ユースケース
@riverpod
Stream<List<NewsFeed>> newsFeedListStreamUseCase(
  NewsFeedListStreamUseCaseRef ref,
) async* {
  final repository = ref.watch(newsFeedRepositoryProvider);
  yield* repository.getAll().asStream();
}
