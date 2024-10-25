// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_contact_comment_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createContactCommentUseCaseHash() =>
    r'96f8374ab25764b716ceaddba394506dbe6a69b4';

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

/// お問い合わせコメントを作成する
///
/// Copied from [createContactCommentUseCase].
@ProviderFor(createContactCommentUseCase)
const createContactCommentUseCaseProvider = CreateContactCommentUseCaseFamily();

/// お問い合わせコメントを作成する
///
/// Copied from [createContactCommentUseCase].
class CreateContactCommentUseCaseFamily
    extends Family<Raw<FutureResult<void>>> {
  /// お問い合わせコメントを作成する
  ///
  /// Copied from [createContactCommentUseCase].
  const CreateContactCommentUseCaseFamily();

  /// お問い合わせコメントを作成する
  ///
  /// Copied from [createContactCommentUseCase].
  CreateContactCommentUseCaseProvider call({
    required ContactId id,
    required String body,
  }) {
    return CreateContactCommentUseCaseProvider(
      id: id,
      body: body,
    );
  }

  @override
  CreateContactCommentUseCaseProvider getProviderOverride(
    covariant CreateContactCommentUseCaseProvider provider,
  ) {
    return call(
      id: provider.id,
      body: provider.body,
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
  String? get name => r'createContactCommentUseCaseProvider';
}

/// お問い合わせコメントを作成する
///
/// Copied from [createContactCommentUseCase].
class CreateContactCommentUseCaseProvider
    extends AutoDisposeProvider<Raw<FutureResult<void>>> {
  /// お問い合わせコメントを作成する
  ///
  /// Copied from [createContactCommentUseCase].
  CreateContactCommentUseCaseProvider({
    required ContactId id,
    required String body,
  }) : this._internal(
          (ref) => createContactCommentUseCase(
            ref as CreateContactCommentUseCaseRef,
            id: id,
            body: body,
          ),
          from: createContactCommentUseCaseProvider,
          name: r'createContactCommentUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createContactCommentUseCaseHash,
          dependencies: CreateContactCommentUseCaseFamily._dependencies,
          allTransitiveDependencies:
              CreateContactCommentUseCaseFamily._allTransitiveDependencies,
          id: id,
          body: body,
        );

  CreateContactCommentUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.body,
  }) : super.internal();

  final ContactId id;
  final String body;

  @override
  Override overrideWith(
    Raw<FutureResult<void>> Function(CreateContactCommentUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateContactCommentUseCaseProvider._internal(
        (ref) => create(ref as CreateContactCommentUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        body: body,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<FutureResult<void>>> createElement() {
    return _CreateContactCommentUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateContactCommentUseCaseProvider &&
        other.id == id &&
        other.body == body;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, body.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateContactCommentUseCaseRef
    on AutoDisposeProviderRef<Raw<FutureResult<void>>> {
  /// The parameter `id` of this provider.
  ContactId get id;

  /// The parameter `body` of this provider.
  String get body;
}

class _CreateContactCommentUseCaseProviderElement
    extends AutoDisposeProviderElement<Raw<FutureResult<void>>>
    with CreateContactCommentUseCaseRef {
  _CreateContactCommentUseCaseProviderElement(super.provider);

  @override
  ContactId get id => (origin as CreateContactCommentUseCaseProvider).id;
  @override
  String get body => (origin as CreateContactCommentUseCaseProvider).body;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
