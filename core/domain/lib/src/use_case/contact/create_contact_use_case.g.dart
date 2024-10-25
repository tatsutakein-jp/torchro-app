// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_contact_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createContactUseCaseHash() =>
    r'1ab441a3e3616fbce89c3f8e6c68a221113c5062';

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

/// お問い合わせを作成する
///
/// Copied from [createContactUseCase].
@ProviderFor(createContactUseCase)
const createContactUseCaseProvider = CreateContactUseCaseFamily();

/// お問い合わせを作成する
///
/// Copied from [createContactUseCase].
class CreateContactUseCaseFamily extends Family<Raw<FutureResult<void>>> {
  /// お問い合わせを作成する
  ///
  /// Copied from [createContactUseCase].
  const CreateContactUseCaseFamily();

  /// お問い合わせを作成する
  ///
  /// Copied from [createContactUseCase].
  CreateContactUseCaseProvider call({
    required String body,
    required ContactTag tag,
  }) {
    return CreateContactUseCaseProvider(
      body: body,
      tag: tag,
    );
  }

  @override
  CreateContactUseCaseProvider getProviderOverride(
    covariant CreateContactUseCaseProvider provider,
  ) {
    return call(
      body: provider.body,
      tag: provider.tag,
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
  String? get name => r'createContactUseCaseProvider';
}

/// お問い合わせを作成する
///
/// Copied from [createContactUseCase].
class CreateContactUseCaseProvider
    extends AutoDisposeProvider<Raw<FutureResult<void>>> {
  /// お問い合わせを作成する
  ///
  /// Copied from [createContactUseCase].
  CreateContactUseCaseProvider({
    required String body,
    required ContactTag tag,
  }) : this._internal(
          (ref) => createContactUseCase(
            ref as CreateContactUseCaseRef,
            body: body,
            tag: tag,
          ),
          from: createContactUseCaseProvider,
          name: r'createContactUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createContactUseCaseHash,
          dependencies: CreateContactUseCaseFamily._dependencies,
          allTransitiveDependencies:
              CreateContactUseCaseFamily._allTransitiveDependencies,
          body: body,
          tag: tag,
        );

  CreateContactUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.body,
    required this.tag,
  }) : super.internal();

  final String body;
  final ContactTag tag;

  @override
  Override overrideWith(
    Raw<FutureResult<void>> Function(CreateContactUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateContactUseCaseProvider._internal(
        (ref) => create(ref as CreateContactUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        body: body,
        tag: tag,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<FutureResult<void>>> createElement() {
    return _CreateContactUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateContactUseCaseProvider &&
        other.body == body &&
        other.tag == tag;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, body.hashCode);
    hash = _SystemHash.combine(hash, tag.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateContactUseCaseRef
    on AutoDisposeProviderRef<Raw<FutureResult<void>>> {
  /// The parameter `body` of this provider.
  String get body;

  /// The parameter `tag` of this provider.
  ContactTag get tag;
}

class _CreateContactUseCaseProviderElement
    extends AutoDisposeProviderElement<Raw<FutureResult<void>>>
    with CreateContactUseCaseRef {
  _CreateContactUseCaseProviderElement(super.provider);

  @override
  String get body => (origin as CreateContactUseCaseProvider).body;
  @override
  ContactTag get tag => (origin as CreateContactUseCaseProvider).tag;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
