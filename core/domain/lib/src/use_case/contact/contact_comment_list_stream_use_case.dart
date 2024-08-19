import 'package:core_data/contact.dart';
import 'package:core_model/contact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contact_comment_list_stream_use_case.g.dart';

/// お問い合わせコメント一覧のストリームを取得する
@riverpod
Stream<List<ContactComment>> contactCommentListStreamUseCase(
  ContactCommentListStreamUseCaseRef ref, {
  required ContactId id,
}) {
  final _ = ref.watch(contactRepositoryProvider);
  return const Stream.empty();
}
