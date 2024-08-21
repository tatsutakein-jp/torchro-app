import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_network_data_source.g.dart';

@Riverpod(keepAlive: true)
UserNetworkDataSource userNetworkDataSource(UserNetworkDataSourceRef ref) {
  throw UnimplementedError('userNetworkDataSource');
}

abstract interface class UserNetworkDataSource {}
