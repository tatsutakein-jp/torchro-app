import 'package:core_common/anyhow.dart';
import 'package:core_data/contact.dart';
import 'package:core_model/contact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_contact_use_case.g.dart';

/// お問い合わせを作成する
@riverpod
Raw<FutureResult<void>> createContactUseCase(
  CreateContactUseCaseRef ref, {
  required String body,
  required ContactTag tag,
}) async {
  final _ = ref.watch(contactRepositoryProvider);

  return const Ok(null);
}
