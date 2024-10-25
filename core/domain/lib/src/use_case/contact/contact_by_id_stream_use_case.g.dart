// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_by_id_stream_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactByIdStreamUseCaseHash() =>
    r'd5d6a85d34cdd3f1e29c94675ef8aecb9d4074e2';

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

/// お問い合わせのストリームを取得する
///
/// Copied from [contactByIdStreamUseCase].
@ProviderFor(contactByIdStreamUseCase)
const contactByIdStreamUseCaseProvider = ContactByIdStreamUseCaseFamily();

/// お問い合わせのストリームを取得する
///
/// Copied from [contactByIdStreamUseCase].
class ContactByIdStreamUseCaseFamily extends Family<AsyncValue<Contact?>> {
  /// お問い合わせのストリームを取得する
  ///
  /// Copied from [contactByIdStreamUseCase].
  const ContactByIdStreamUseCaseFamily();

  /// お問い合わせのストリームを取得する
  ///
  /// Copied from [contactByIdStreamUseCase].
  ContactByIdStreamUseCaseProvider call({
    required ContactId id,
  }) {
    return ContactByIdStreamUseCaseProvider(
      id: id,
    );
  }

  @override
  ContactByIdStreamUseCaseProvider getProviderOverride(
    covariant ContactByIdStreamUseCaseProvider provider,
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
  String? get name => r'contactByIdStreamUseCaseProvider';
}

/// お問い合わせのストリームを取得する
///
/// Copied from [contactByIdStreamUseCase].
class ContactByIdStreamUseCaseProvider
    extends AutoDisposeStreamProvider<Contact?> {
  /// お問い合わせのストリームを取得する
  ///
  /// Copied from [contactByIdStreamUseCase].
  ContactByIdStreamUseCaseProvider({
    required ContactId id,
  }) : this._internal(
          (ref) => contactByIdStreamUseCase(
            ref as ContactByIdStreamUseCaseRef,
            id: id,
          ),
          from: contactByIdStreamUseCaseProvider,
          name: r'contactByIdStreamUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$contactByIdStreamUseCaseHash,
          dependencies: ContactByIdStreamUseCaseFamily._dependencies,
          allTransitiveDependencies:
              ContactByIdStreamUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  ContactByIdStreamUseCaseProvider._internal(
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
    Stream<Contact?> Function(ContactByIdStreamUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ContactByIdStreamUseCaseProvider._internal(
        (ref) => create(ref as ContactByIdStreamUseCaseRef),
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
  AutoDisposeStreamProviderElement<Contact?> createElement() {
    return _ContactByIdStreamUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ContactByIdStreamUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ContactByIdStreamUseCaseRef on AutoDisposeStreamProviderRef<Contact?> {
  /// The parameter `id` of this provider.
  ContactId get id;
}

class _ContactByIdStreamUseCaseProviderElement
    extends AutoDisposeStreamProviderElement<Contact?>
    with ContactByIdStreamUseCaseRef {
  _ContactByIdStreamUseCaseProviderElement(super.provider);

  @override
  ContactId get id => (origin as ContactByIdStreamUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
