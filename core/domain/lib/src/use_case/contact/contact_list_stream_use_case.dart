import 'package:core_data/contact.dart';
import 'package:core_model/contact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_list_stream_use_case.g.dart';

/// お問い合わせ一覧のストリームを取得する
@riverpod
Stream<List<Contact>> contactListStreamUseCase(
  ContactListStreamUseCaseRef ref, {
  required bool includeClose,
}) {
  final _ = ref.watch(contactRepositoryProvider);
  return const Stream.empty();
}
