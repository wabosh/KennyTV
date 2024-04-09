// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_episode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nextEpisodeHash() => r'0e0d20778779d498d7e8f6935bbdafc58ee27cad';

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

/// See also [nextEpisode].
@ProviderFor(nextEpisode)
const nextEpisodeProvider = NextEpisodeFamily();

/// See also [nextEpisode].
class NextEpisodeFamily extends Family<Episode?> {
  /// See also [nextEpisode].
  const NextEpisodeFamily();

  /// See also [nextEpisode].
  NextEpisodeProvider call(
    Episode currentEpisode,
  ) {
    return NextEpisodeProvider(
      currentEpisode,
    );
  }

  @override
  NextEpisodeProvider getProviderOverride(
    covariant NextEpisodeProvider provider,
  ) {
    return call(
      provider.currentEpisode,
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
  String? get name => r'nextEpisodeProvider';
}

/// See also [nextEpisode].
class NextEpisodeProvider extends AutoDisposeProvider<Episode?> {
  /// See also [nextEpisode].
  NextEpisodeProvider(
    Episode currentEpisode,
  ) : this._internal(
          (ref) => nextEpisode(
            ref as NextEpisodeRef,
            currentEpisode,
          ),
          from: nextEpisodeProvider,
          name: r'nextEpisodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$nextEpisodeHash,
          dependencies: NextEpisodeFamily._dependencies,
          allTransitiveDependencies:
              NextEpisodeFamily._allTransitiveDependencies,
          currentEpisode: currentEpisode,
        );

  NextEpisodeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.currentEpisode,
  }) : super.internal();

  final Episode currentEpisode;

  @override
  Override overrideWith(
    Episode? Function(NextEpisodeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NextEpisodeProvider._internal(
        (ref) => create(ref as NextEpisodeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        currentEpisode: currentEpisode,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Episode?> createElement() {
    return _NextEpisodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NextEpisodeProvider &&
        other.currentEpisode == currentEpisode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, currentEpisode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NextEpisodeRef on AutoDisposeProviderRef<Episode?> {
  /// The parameter `currentEpisode` of this provider.
  Episode get currentEpisode;
}

class _NextEpisodeProviderElement extends AutoDisposeProviderElement<Episode?>
    with NextEpisodeRef {
  _NextEpisodeProviderElement(super.provider);

  @override
  Episode get currentEpisode => (origin as NextEpisodeProvider).currentEpisode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
