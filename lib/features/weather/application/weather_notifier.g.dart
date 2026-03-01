// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherLocalCacheHash() => r'66098c6cfcc893530c08d101687bd6e1fe9a1a77';

/// See also [weatherLocalCache].
@ProviderFor(weatherLocalCache)
final weatherLocalCacheProvider =
    AutoDisposeProvider<WeatherLocalCache>.internal(
  weatherLocalCache,
  name: r'weatherLocalCacheProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherLocalCacheHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeatherLocalCacheRef = AutoDisposeProviderRef<WeatherLocalCache>;
String _$weatherRepositoryHash() => r'783717161a943834bd88e3e5f58337fe58290ba0';

/// See also [weatherRepository].
@ProviderFor(weatherRepository)
final weatherRepositoryProvider =
    AutoDisposeProvider<WeatherRepository>.internal(
  weatherRepository,
  name: r'weatherRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeatherRepositoryRef = AutoDisposeProviderRef<WeatherRepository>;
String _$weatherNotifierHash() => r'0f978718894e8c7dc19c2adf0b13fac5a9267507';

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

abstract class _$WeatherNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Weather>> {
  late final String city;

  FutureOr<List<Weather>> build(
    String city,
  );
}

/// See also [WeatherNotifier].
@ProviderFor(WeatherNotifier)
const weatherNotifierProvider = WeatherNotifierFamily();

/// See also [WeatherNotifier].
class WeatherNotifierFamily extends Family<AsyncValue<List<Weather>>> {
  /// See also [WeatherNotifier].
  const WeatherNotifierFamily();

  /// See also [WeatherNotifier].
  WeatherNotifierProvider call(
    String city,
  ) {
    return WeatherNotifierProvider(
      city,
    );
  }

  @override
  WeatherNotifierProvider getProviderOverride(
    covariant WeatherNotifierProvider provider,
  ) {
    return call(
      provider.city,
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
  String? get name => r'weatherNotifierProvider';
}

/// See also [WeatherNotifier].
class WeatherNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    WeatherNotifier, List<Weather>> {
  /// See also [WeatherNotifier].
  WeatherNotifierProvider(
    String city,
  ) : this._internal(
          () => WeatherNotifier()..city = city,
          from: weatherNotifierProvider,
          name: r'weatherNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherNotifierHash,
          dependencies: WeatherNotifierFamily._dependencies,
          allTransitiveDependencies:
              WeatherNotifierFamily._allTransitiveDependencies,
          city: city,
        );

  WeatherNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.city,
  }) : super.internal();

  final String city;

  @override
  FutureOr<List<Weather>> runNotifierBuild(
    covariant WeatherNotifier notifier,
  ) {
    return notifier.build(
      city,
    );
  }

  @override
  Override overrideWith(WeatherNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: WeatherNotifierProvider._internal(
        () => create()..city = city,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        city: city,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WeatherNotifier, List<Weather>>
      createElement() {
    return _WeatherNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherNotifierProvider && other.city == city;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeatherNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<Weather>> {
  /// The parameter `city` of this provider.
  String get city;
}

class _WeatherNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WeatherNotifier,
        List<Weather>> with WeatherNotifierRef {
  _WeatherNotifierProviderElement(super.provider);

  @override
  String get city => (origin as WeatherNotifierProvider).city;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
