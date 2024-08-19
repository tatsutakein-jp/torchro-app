import 'package:core_network/contact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_repository.g.dart';

@riverpod
ContactRepository contactRepository(ContactRepositoryRef ref) =>
    ContactRepository(
      network: ref.watch(contactNetworkDataSourceProvider),
    );

/// お問い合わせのリポジトリ
class ContactRepository {
  ContactRepository({
    required ContactNetworkDataSource network,
  }) : _network = network;

  final ContactNetworkDataSource _network;

  void fake() {
    final _ = _network;
  }
}
