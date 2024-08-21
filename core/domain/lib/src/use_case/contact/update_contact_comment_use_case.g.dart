// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_contact_comment_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateContactCommentUseCaseHash() =>
    r'876a03c577dfeb712fa245bf22b4c0b89032909a';

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

/// お問い合わせコメントを更新する
///
/// Copied from [updateContactCommentUseCase].
@ProviderFor(updateContactCommentUseCase)
const updateContactCommentUseCaseProvider = UpdateContactCommentUseCaseFamily();

/// お問い合わせコメントを更新する
///
/// Copied from [updateContactCommentUseCase].
class UpdateContactCommentUseCaseFamily
    extends Family<Raw<FutureResult<void>>> {
  /// お問い合わせコメントを更新する
  ///
  /// Copied from [updateContactCommentUseCase].
  const UpdateContactCommentUseCaseFamily();

  /// お問い合わせコメントを更新する
  ///
  /// Copied from [updateContactCommentUseCase].
  UpdateContactCommentUseCaseProvider call({
    required ContactId id,
    required ContactStatus status,
    String? answer,
  }) {
    return UpdateContactCommentUseCaseProvider(
      id: id,
      status: status,
      answer: answer,
    );
  }

  @override
  UpdateContactCommentUseCaseProvider getProviderOverride(
    covariant UpdateContactCommentUseCaseProvider provider,
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
  String? get name => r'updateContactCommentUseCaseProvider';
}

/// お問い合わせコメントを更新する
///
/// Copied from [updateContactCommentUseCase].
class UpdateContactCommentUseCaseProvider
    extends AutoDisposeProvider<Raw<FutureResult<void>>> {
  /// お問い合わせコメントを更新する
  ///
  /// Copied from [updateContactCommentUseCase].
  UpdateContactCommentUseCaseProvider({
    required ContactId id,
    required ContactStatus status,
    String? answer,
  }) : this._internal(
          (ref) => updateContactCommentUseCase(
            ref as UpdateContactCommentUseCaseRef,
            id: id,
            status: status,
            answer: answer,
          ),
          from: updateContactCommentUseCaseProvider,
          name: r'updateContactCommentUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateContactCommentUseCaseHash,
          dependencies: UpdateContactCommentUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UpdateContactCommentUseCaseFamily._allTransitiveDependencies,
          id: id,
          status: status,
          answer: answer,
        );

  UpdateContactCommentUseCaseProvider._internal(
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
    Raw<FutureResult<void>> Function(UpdateContactCommentUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateContactCommentUseCaseProvider._internal(
        (ref) => create(ref as UpdateContactCommentUseCaseRef),
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
    return _UpdateContactCommentUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateContactCommentUseCaseProvider &&
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

mixin UpdateContactCommentUseCaseRef
    on AutoDisposeProviderRef<Raw<FutureResult<void>>> {
  /// The parameter `id` of this provider.
  ContactId get id;

  /// The parameter `status` of this provider.
  ContactStatus get status;

  /// The parameter `answer` of this provider.
  String? get answer;
}

class _UpdateContactCommentUseCaseProviderElement
    extends AutoDisposeProviderElement<Raw<FutureResult<void>>>
    with UpdateContactCommentUseCaseRef {
  _UpdateContactCommentUseCaseProviderElement(super.provider);

  @override
  ContactId get id => (origin as UpdateContactCommentUseCaseProvider).id;
  @override
  ContactStatus get status =>
      (origin as UpdateContactCommentUseCaseProvider).status;
  @override
  String? get answer => (origin as UpdateContactCommentUseCaseProvider).answer;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
