import 'package:core_common/anyhow.dart';
import 'package:core_data/contact.dart';
import 'package:core_model/contact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_contact_comment_use_case.g.dart';

/// お問い合わせコメントを作成する
@riverpod
Raw<FutureResult<void>> createContactCommentUseCase(
  CreateContactCommentUseCaseRef ref, {
  required ContactId id,
  required String body,
}) async {
  final _ = ref.watch(contactRepositoryProvider);

  return const Ok(null);
}
