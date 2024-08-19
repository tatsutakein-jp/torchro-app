import 'package:core_common/anyhow.dart';
import 'package:core_data/contact.dart';
import 'package:core_model/contact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_contact_use_case.g.dart';

/// お問い合わせを更新する
@riverpod
Raw<FutureResult<void>> updateContactUseCase(
  UpdateContactUseCaseRef ref, {
  required ContactId id,
  required ContactStatus status,
  String? answer,
}) async {
  final _ = ref.watch(contactRepositoryProvider);

  return const Ok(null);
}
