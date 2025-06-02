// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toast_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$toastManagerHash() => r'd036ff9ce9f8999ba884c5f82aab0e61adaf7e1b';

/// See also [toastManager].
@ProviderFor(toastManager)
final toastManagerProvider = Provider<ToastManager>.internal(
  toastManager,
  name: r'toastManagerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toastManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ToastManagerRef = ProviderRef<ToastManager>;
String _$toastMessageHash() => r'4eb4a521b9bbc9613a09a968cfa772275ad5329c';

/// See also [ToastMessage].
@ProviderFor(ToastMessage)
final toastMessageProvider =
    AutoDisposeNotifierProvider<ToastMessage, String?>.internal(
  ToastMessage.new,
  name: r'toastMessageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$toastMessageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ToastMessage = AutoDisposeNotifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
