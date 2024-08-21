import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_contact_comment.freezed.dart';
part 'network_contact_comment.g.dart';

/// お問い合わせコメント
///
/// {@category NetworkModel}
@freezed
class NetworkContactComment with _$NetworkContactComment {
  const factory NetworkContactComment({
    required String id,
  }) = _NetworkContactComment;

  factory NetworkContactComment.fromJson(Map<String, Object?> json) =>
      _$NetworkContactCommentFromJson(json);
}
