import 'package:core_data/contact.dart';
import 'package:core_model/contact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_by_id_stream_use_case.g.dart';

/// お問い合わせのストリームを取得する
@riverpod
Stream<Contact?> contactByIdStreamUseCase(
  ContactByIdStreamUseCaseRef ref, {
  required ContactId id,
}) {
  final _ = ref.watch(contactRepositoryProvider);
  return const Stream.empty();
}
