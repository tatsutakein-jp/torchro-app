// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactComment {
  ContactCommentId get id => throw _privateConstructorUsedError;
  String get contactId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  List<String> get isReadUIds => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of ContactComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactCommentCopyWith<ContactComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCommentCopyWith<$Res> {
  factory $ContactCommentCopyWith(
          ContactComment value, $Res Function(ContactComment) then) =
      _$ContactCommentCopyWithImpl<$Res, ContactComment>;
  @useResult
  $Res call(
      {ContactCommentId id,
      String contactId,
      String uid,
      String body,
      List<String> isReadUIds,
      DateTime? createdAt});
}

/// @nodoc
class _$ContactCommentCopyWithImpl<$Res, $Val extends ContactComment>
    implements $ContactCommentCopyWith<$Res> {
  _$ContactCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contactId = null,
    Object? uid = null,
    Object? body = null,
    Object? isReadUIds = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ContactCommentId,
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isReadUIds: null == isReadUIds
          ? _value.isReadUIds
          : isReadUIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkContactCommentImplCopyWith<$Res>
    implements $ContactCommentCopyWith<$Res> {
  factory _$$NetworkContactCommentImplCopyWith(
          _$NetworkContactCommentImpl value,
          $Res Function(_$NetworkContactCommentImpl) then) =
      __$$NetworkContactCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContactCommentId id,
      String contactId,
      String uid,
      String body,
      List<String> isReadUIds,
      DateTime? createdAt});
}

/// @nodoc
class __$$NetworkContactCommentImplCopyWithImpl<$Res>
    extends _$ContactCommentCopyWithImpl<$Res, _$NetworkContactCommentImpl>
    implements _$$NetworkContactCommentImplCopyWith<$Res> {
  __$$NetworkContactCommentImplCopyWithImpl(_$NetworkContactCommentImpl _value,
      $Res Function(_$NetworkContactCommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contactId = null,
    Object? uid = null,
    Object? body = null,
    Object? isReadUIds = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$NetworkContactCommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ContactCommentId,
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      isReadUIds: null == isReadUIds
          ? _value._isReadUIds
          : isReadUIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$NetworkContactCommentImpl implements _NetworkContactComment {
  const _$NetworkContactCommentImpl(
      {required this.id,
      required this.contactId,
      required this.uid,
      required this.body,
      required final List<String> isReadUIds,
      this.createdAt})
      : _isReadUIds = isReadUIds;

  @override
  final ContactCommentId id;
  @override
  final String contactId;
  @override
  final String uid;
  @override
  final String body;
  final List<String> _isReadUIds;
  @override
  List<String> get isReadUIds {
    if (_isReadUIds is EqualUnmodifiableListView) return _isReadUIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isReadUIds);
  }

  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ContactComment(id: $id, contactId: $contactId, uid: $uid, body: $body, isReadUIds: $isReadUIds, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkContactCommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality()
                .equals(other._isReadUIds, _isReadUIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, contactId, uid, body,
      const DeepCollectionEquality().hash(_isReadUIds), createdAt);

  /// Create a copy of ContactComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkContactCommentImplCopyWith<_$NetworkContactCommentImpl>
      get copyWith => __$$NetworkContactCommentImplCopyWithImpl<
          _$NetworkContactCommentImpl>(this, _$identity);
}

abstract class _NetworkContactComment implements ContactComment {
  const factory _NetworkContactComment(
      {required final ContactCommentId id,
      required final String contactId,
      required final String uid,
      required final String body,
      required final List<String> isReadUIds,
      final DateTime? createdAt}) = _$NetworkContactCommentImpl;

  @override
  ContactCommentId get id;
  @override
  String get contactId;
  @override
  String get uid;
  @override
  String get body;
  @override
  List<String> get isReadUIds;
  @override
  DateTime? get createdAt;

  /// Create a copy of ContactComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkContactCommentImplCopyWith<_$NetworkContactCommentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
