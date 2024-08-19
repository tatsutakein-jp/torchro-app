import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_user_setting.freezed.dart';
part 'network_user_setting.g.dart';

/// ユーザー設定
///
/// {@category NetworkModel}
@freezed
class NetworkUserSetting with _$NetworkUserSetting {
  const factory NetworkUserSetting({
    required String id,
  }) = _NetworkUserSetting;

  factory NetworkUserSetting.fromJson(Map<String, Object?> json) =>
      _$NetworkUserSettingFromJson(json);
}
