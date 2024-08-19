import 'package:core_network/contact.dart';
import 'package:core_network/src/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_network_data_source.g.dart';

@Riverpod(keepAlive: true)
ContactNetworkDataSource contactNetworkDataSource(
  ContactNetworkDataSourceRef ref,
) =>
    ContactNetworkDataSource(
      ref.watch(dioClientProvider),
    );

@RestApi()
abstract interface class ContactNetworkDataSource {
  factory ContactNetworkDataSource(Dio dio) = _ContactNetworkDataSource;

  @GET('/api/v1/contacts')
  Future<List<NetworkContact>> fetchContactList({
    @Query('userId') required String userId,
  });

  @POST('/api/v1/contacts')
  Future<String> createContact({
    @Field('userId') required String userId,
    @Field('title') required String title,
  });
}
