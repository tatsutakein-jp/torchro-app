import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_comment.freezed.dart';

extension type ContactCommentId(String value) {}

/// お問い合わせコメント
///
/// {@category Model}
@freezed
class ContactComment with _$ContactComment {
  const factory ContactComment({
    required ContactCommentId id,
    required String contactId,
    required String uid,
    required String body,
    required List<String> isReadUIds,
    DateTime? createdAt,
  }) = _NetworkContactComment;
}
