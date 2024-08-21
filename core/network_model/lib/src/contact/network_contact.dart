import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_contact.freezed.dart';
part 'network_contact.g.dart';

/// お問い合わせ
///
/// {@category NetworkModel}
@freezed
class NetworkContact with _$NetworkContact {
  const factory NetworkContact({
    required String id,
  }) = _NetworkContact;

  factory NetworkContact.fromJson(Map<String, Object?> json) =>
      _$NetworkContactFromJson(json);
}
