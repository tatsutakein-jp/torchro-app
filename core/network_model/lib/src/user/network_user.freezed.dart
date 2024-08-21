// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NetworkUser _$NetworkUserFromJson(Map<String, dynamic> json) {
  return _NetworkUser.fromJson(json);
}

/// @nodoc
mixin _$NetworkUser {
  String get id => throw _privateConstructorUsedError;

  /// Serializes this NetworkUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NetworkUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkUserCopyWith<NetworkUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkUserCopyWith<$Res> {
  factory $NetworkUserCopyWith(
          NetworkUser value, $Res Function(NetworkUser) then) =
      _$NetworkUserCopyWithImpl<$Res, NetworkUser>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$NetworkUserCopyWithImpl<$Res, $Val extends NetworkUser>
    implements $NetworkUserCopyWith<$Res> {
  _$NetworkUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkUserImplCopyWith<$Res>
    implements $NetworkUserCopyWith<$Res> {
  factory _$$NetworkUserImplCopyWith(
          _$NetworkUserImpl value, $Res Function(_$NetworkUserImpl) then) =
      __$$NetworkUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$NetworkUserImplCopyWithImpl<$Res>
    extends _$NetworkUserCopyWithImpl<$Res, _$NetworkUserImpl>
    implements _$$NetworkUserImplCopyWith<$Res> {
  __$$NetworkUserImplCopyWithImpl(
      _$NetworkUserImpl _value, $Res Function(_$NetworkUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$NetworkUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkUserImpl implements _NetworkUser {
  const _$NetworkUserImpl({required this.id});

  factory _$NetworkUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkUserImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'NetworkUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of NetworkUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkUserImplCopyWith<_$NetworkUserImpl> get copyWith =>
      __$$NetworkUserImplCopyWithImpl<_$NetworkUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkUserImplToJson(
      this,
    );
  }
}

abstract class _NetworkUser implements NetworkUser {
  const factory _NetworkUser({required final String id}) = _$NetworkUserImpl;

  factory _NetworkUser.fromJson(Map<String, dynamic> json) =
      _$NetworkUserImpl.fromJson;

  @override
  String get id;

  /// Create a copy of NetworkUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkUserImplCopyWith<_$NetworkUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
