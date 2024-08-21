// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_comment_list_stream_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactCommentListStreamUseCaseHash() =>
    r'32aac6528a9b6627bb90493d1cd198ac5bafd659';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// お問い合わせコメント一覧のストリームを取得する
///
/// Copied from [contactCommentListStreamUseCase].
@ProviderFor(contactCommentListStreamUseCase)
const contactCommentListStreamUseCaseProvider =
    ContactCommentListStreamUseCaseFamily();

/// お問い合わせコメント一覧のストリームを取得する
///
/// Copied from [contactCommentListStreamUseCase].
class ContactCommentListStreamUseCaseFamily
    extends Family<AsyncValue<List<ContactComment>>> {
  /// お問い合わせコメント一覧のストリームを取得する
  ///
  /// Copied from [contactCommentListStreamUseCase].
  const ContactCommentListStreamUseCaseFamily();

  /// お問い合わせコメント一覧のストリームを取得する
  ///
  /// Copied from [contactCommentListStreamUseCase].
  ContactCommentListStreamUseCaseProvider call({
    required ContactId id,
  }) {
    return ContactCommentListStreamUseCaseProvider(
      id: id,
    );
  }

  @override
  ContactCommentListStreamUseCaseProvider getProviderOverride(
    covariant ContactCommentListStreamUseCaseProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'contactCommentListStreamUseCaseProvider';
}

/// お問い合わせコメント一覧のストリームを取得する
///
/// Copied from [contactCommentListStreamUseCase].
class ContactCommentListStreamUseCaseProvider
    extends AutoDisposeStreamProvider<List<ContactComment>> {
  /// お問い合わせコメント一覧のストリームを取得する
  ///
  /// Copied from [contactCommentListStreamUseCase].
  ContactCommentListStreamUseCaseProvider({
    required ContactId id,
  }) : this._internal(
          (ref) => contactCommentListStreamUseCase(
            ref as ContactCommentListStreamUseCaseRef,
            id: id,
          ),
          from: contactCommentListStreamUseCaseProvider,
          name: r'contactCommentListStreamUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$contactCommentListStreamUseCaseHash,
          dependencies: ContactCommentListStreamUseCaseFamily._dependencies,
          allTransitiveDependencies:
              ContactCommentListStreamUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  ContactCommentListStreamUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final ContactId id;

  @override
  Override overrideWith(
    Stream<List<ContactComment>> Function(
            ContactCommentListStreamUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ContactCommentListStreamUseCaseProvider._internal(
        (ref) => create(ref as ContactCommentListStreamUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<ContactComment>> createElement() {
    return _ContactCommentListStreamUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ContactCommentListStreamUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ContactCommentListStreamUseCaseRef
    on AutoDisposeStreamProviderRef<List<ContactComment>> {
  /// The parameter `id` of this provider.
  ContactId get id;
}

class _ContactCommentListStreamUseCaseProviderElement
    extends AutoDisposeStreamProviderElement<List<ContactComment>>
    with ContactCommentListStreamUseCaseRef {
  _ContactCommentListStreamUseCaseProviderElement(super.provider);

  @override
  ContactId get id => (origin as ContactCommentListStreamUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
