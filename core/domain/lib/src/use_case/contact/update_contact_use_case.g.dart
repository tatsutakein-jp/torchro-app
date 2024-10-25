// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_contact_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateContactUseCaseHash() =>
    r'a7db2e9b78acacb39aeaf633b062be1a36617f08';

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

/// お問い合わせを更新する
///
/// Copied from [updateContactUseCase].
@ProviderFor(updateContactUseCase)
const updateContactUseCaseProvider = UpdateContactUseCaseFamily();

/// お問い合わせを更新する
///
/// Copied from [updateContactUseCase].
class UpdateContactUseCaseFamily extends Family<Raw<FutureResult<void>>> {
  /// お問い合わせを更新する
  ///
  /// Copied from [updateContactUseCase].
  const UpdateContactUseCaseFamily();

  /// お問い合わせを更新する
  ///
  /// Copied from [updateContactUseCase].
  UpdateContactUseCaseProvider call({
    required ContactId id,
    required ContactStatus status,
    String? answer,
  }) {
    return UpdateContactUseCaseProvider(
      id: id,
      status: status,
      answer: answer,
    );
  }

  @override
  UpdateContactUseCaseProvider getProviderOverride(
    covariant UpdateContactUseCaseProvider provider,
  ) {
    return call(
      id: provider.id,
      status: provider.status,
      answer: provider.answer,
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
  String? get name => r'updateContactUseCaseProvider';
}

/// お問い合わせを更新する
///
/// Copied from [updateContactUseCase].
class UpdateContactUseCaseProvider
    extends AutoDisposeProvider<Raw<FutureResult<void>>> {
  /// お問い合わせを更新する
  ///
  /// Copied from [updateContactUseCase].
  UpdateContactUseCaseProvider({
    required ContactId id,
    required ContactStatus status,
    String? answer,
  }) : this._internal(
          (ref) => updateContactUseCase(
            ref as UpdateContactUseCaseRef,
            id: id,
            status: status,
            answer: answer,
          ),
          from: updateContactUseCaseProvider,
          name: r'updateContactUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateContactUseCaseHash,
          dependencies: UpdateContactUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UpdateContactUseCaseFamily._allTransitiveDependencies,
          id: id,
          status: status,
          answer: answer,
        );

  UpdateContactUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.status,
    required this.answer,
  }) : super.internal();

  final ContactId id;
  final ContactStatus status;
  final String? answer;

  @override
  Override overrideWith(
    Raw<FutureResult<void>> Function(UpdateContactUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateContactUseCaseProvider._internal(
        (ref) => create(ref as UpdateContactUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        status: status,
        answer: answer,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<FutureResult<void>>> createElement() {
    return _UpdateContactUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateContactUseCaseProvider &&
        other.id == id &&
        other.status == status &&
        other.answer == answer;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);
    hash = _SystemHash.combine(hash, answer.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateContactUseCaseRef
    on AutoDisposeProviderRef<Raw<FutureResult<void>>> {
  /// The parameter `id` of this provider.
  ContactId get id;

  /// The parameter `status` of this provider.
  ContactStatus get status;

  /// The parameter `answer` of this provider.
  String? get answer;
}

class _UpdateContactUseCaseProviderElement
    extends AutoDisposeProviderElement<Raw<FutureResult<void>>>
    with UpdateContactUseCaseRef {
  _UpdateContactUseCaseProviderElement(super.provider);

  @override
  ContactId get id => (origin as UpdateContactUseCaseProvider).id;
  @override
  ContactStatus get status => (origin as UpdateContactUseCaseProvider).status;
  @override
  String? get answer => (origin as UpdateContactUseCaseProvider).answer;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
