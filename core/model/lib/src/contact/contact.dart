import 'package:core_model/src/contact/contact_status.dart';
import 'package:core_model/src/contact/contact_tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

extension type ContactId(String value) {}

/// お問い合わせ
///
/// {@category Model}
@freezed
class Contact with _$Contact {
  const factory Contact({
    required ContactId id,
    required String uid,
    required String name,
    required String email,
    required String body,
    required ContactTag tag,
    String? answer,
    @Default(ContactStatus.start) ContactStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Contact;
}
