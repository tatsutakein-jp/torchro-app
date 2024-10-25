// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_list_stream_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactListStreamUseCaseHash() =>
    r'33b178a1daf5f07b4d7295d894e442dd792cb8fd';

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

/// お問い合わせ一覧のストリームを取得する
///
/// Copied from [contactListStreamUseCase].
@ProviderFor(contactListStreamUseCase)
const contactListStreamUseCaseProvider = ContactListStreamUseCaseFamily();

/// お問い合わせ一覧のストリームを取得する
///
/// Copied from [contactListStreamUseCase].
class ContactListStreamUseCaseFamily extends Family<AsyncValue<List<Contact>>> {
  /// お問い合わせ一覧のストリームを取得する
  ///
  /// Copied from [contactListStreamUseCase].
  const ContactListStreamUseCaseFamily();

  /// お問い合わせ一覧のストリームを取得する
  ///
  /// Copied from [contactListStreamUseCase].
  ContactListStreamUseCaseProvider call({
    required bool includeClose,
  }) {
    return ContactListStreamUseCaseProvider(
      includeClose: includeClose,
    );
  }

  @override
  ContactListStreamUseCaseProvider getProviderOverride(
    covariant ContactListStreamUseCaseProvider provider,
  ) {
    return call(
      includeClose: provider.includeClose,
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
  String? get name => r'contactListStreamUseCaseProvider';
}

/// お問い合わせ一覧のストリームを取得する
///
/// Copied from [contactListStreamUseCase].
class ContactListStreamUseCaseProvider
    extends AutoDisposeStreamProvider<List<Contact>> {
  /// お問い合わせ一覧のストリームを取得する
  ///
  /// Copied from [contactListStreamUseCase].
  ContactListStreamUseCaseProvider({
    required bool includeClose,
  }) : this._internal(
          (ref) => contactListStreamUseCase(
            ref as ContactListStreamUseCaseRef,
            includeClose: includeClose,
          ),
          from: contactListStreamUseCaseProvider,
          name: r'contactListStreamUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$contactListStreamUseCaseHash,
          dependencies: ContactListStreamUseCaseFamily._dependencies,
          allTransitiveDependencies:
              ContactListStreamUseCaseFamily._allTransitiveDependencies,
          includeClose: includeClose,
        );

  ContactListStreamUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.includeClose,
  }) : super.internal();

  final bool includeClose;

  @override
  Override overrideWith(
    Stream<List<Contact>> Function(ContactListStreamUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ContactListStreamUseCaseProvider._internal(
        (ref) => create(ref as ContactListStreamUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        includeClose: includeClose,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Contact>> createElement() {
    return _ContactListStreamUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ContactListStreamUseCaseProvider &&
        other.includeClose == includeClose;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, includeClose.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ContactListStreamUseCaseRef
    on AutoDisposeStreamProviderRef<List<Contact>> {
  /// The parameter `includeClose` of this provider.
  bool get includeClose;
}

class _ContactListStreamUseCaseProviderElement
    extends AutoDisposeStreamProviderElement<List<Contact>>
    with ContactListStreamUseCaseRef {
  _ContactListStreamUseCaseProviderElement(super.provider);

  @override
  bool get includeClose =>
      (origin as ContactListStreamUseCaseProvider).includeClose;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
