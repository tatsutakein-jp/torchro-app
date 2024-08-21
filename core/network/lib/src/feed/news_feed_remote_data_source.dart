import 'package:core_network/src/dio_client.dart';
import 'package:core_network_model/feed.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_feed_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
NewsFeedRemoteDataSource newsFeedRemoteDataSource(
  NewsFeedRemoteDataSourceRef ref,
) =>
    NewsFeedRemoteDataSource(
      ref.watch(dioClientProvider),
    );

@RestApi()
abstract class NewsFeedRemoteDataSource {
  factory NewsFeedRemoteDataSource(Dio dio) = _NewsFeedRemoteDataSource;

  @GET('/v1/news')
  Future<List<NetworkNewsFeed>> getNewsList();
}
