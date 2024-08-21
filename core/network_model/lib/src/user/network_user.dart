import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_user.freezed.dart';
part 'network_user.g.dart';

/// ユーザー
///
/// {@category NetworkModel}
@freezed
class NetworkUser with _$NetworkUser {
  const factory NetworkUser({
    required String id,
  }) = _NetworkUser;

  factory NetworkUser.fromJson(Map<String, Object?> json) =>
      _$NetworkUserFromJson(json);
}
