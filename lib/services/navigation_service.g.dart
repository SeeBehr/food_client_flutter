// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String $navigationServiceHash() => r'5836e22e79522ecbeb8838964f3d903456da5295';

/// See also [navigationService].
final navigationServiceProvider = AutoDisposeProvider<BeamerNavigationService>(
  navigationService,
  name: r'navigationServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $navigationServiceHash,
);
typedef NavigationServiceRef = AutoDisposeProviderRef<BeamerNavigationService>;
String $globalBeamerDelegateHash() =>
    r'56f609fed5faacac37f40030a5d38e0882a0694a';

/// See also [globalBeamerDelegate].
final globalBeamerDelegateProvider = AutoDisposeProvider<BeamerDelegate>(
  globalBeamerDelegate,
  name: r'globalBeamerDelegateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $globalBeamerDelegateHash,
);
typedef GlobalBeamerDelegateRef = AutoDisposeProviderRef<BeamerDelegate>;
