// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productHash() => r'bbf793826327dcd0c43e14b0a1e275b83de6ea60';

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

/// See also [product].
@ProviderFor(product)
const productProvider = ProductFamily();

/// See also [product].
class ProductFamily extends Family<Product?> {
  /// See also [product].
  const ProductFamily();

  /// See also [product].
  ProductProvider call(
    String productId,
  ) {
    return ProductProvider(
      productId,
    );
  }

  @override
  ProductProvider getProviderOverride(
    covariant ProductProvider provider,
  ) {
    return call(
      provider.productId,
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
  String? get name => r'productProvider';
}

/// See also [product].
class ProductProvider extends AutoDisposeProvider<Product?> {
  /// See also [product].
  ProductProvider(
    String productId,
  ) : this._internal(
          (ref) => product(
            ref as ProductRef,
            productId,
          ),
          from: productProvider,
          name: r'productProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productHash,
          dependencies: ProductFamily._dependencies,
          allTransitiveDependencies: ProductFamily._allTransitiveDependencies,
          productId: productId,
        );

  ProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final String productId;

  @override
  Override overrideWith(
    Product? Function(ProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductProvider._internal(
        (ref) => create(ref as ProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Product?> createElement() {
    return _ProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductRef on AutoDisposeProviderRef<Product?> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _ProductProviderElement extends AutoDisposeProviderElement<Product?>
    with ProductRef {
  _ProductProviderElement(super.provider);

  @override
  String get productId => (origin as ProductProvider).productId;
}

String _$isInCartStatusHash() => r'd380df998d8e5f02c9542b08bad3aebca7d38974';

/// See also [isInCartStatus].
@ProviderFor(isInCartStatus)
const isInCartStatusProvider = IsInCartStatusFamily();

/// See also [isInCartStatus].
class IsInCartStatusFamily extends Family<bool> {
  /// See also [isInCartStatus].
  const IsInCartStatusFamily();

  /// See also [isInCartStatus].
  IsInCartStatusProvider call(
    String productId,
  ) {
    return IsInCartStatusProvider(
      productId,
    );
  }

  @override
  IsInCartStatusProvider getProviderOverride(
    covariant IsInCartStatusProvider provider,
  ) {
    return call(
      provider.productId,
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
  String? get name => r'isInCartStatusProvider';
}

/// See also [isInCartStatus].
class IsInCartStatusProvider extends AutoDisposeProvider<bool> {
  /// See also [isInCartStatus].
  IsInCartStatusProvider(
    String productId,
  ) : this._internal(
          (ref) => isInCartStatus(
            ref as IsInCartStatusRef,
            productId,
          ),
          from: isInCartStatusProvider,
          name: r'isInCartStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isInCartStatusHash,
          dependencies: IsInCartStatusFamily._dependencies,
          allTransitiveDependencies:
              IsInCartStatusFamily._allTransitiveDependencies,
          productId: productId,
        );

  IsInCartStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final String productId;

  @override
  Override overrideWith(
    bool Function(IsInCartStatusRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsInCartStatusProvider._internal(
        (ref) => create(ref as IsInCartStatusRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsInCartStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsInCartStatusProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IsInCartStatusRef on AutoDisposeProviderRef<bool> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _IsInCartStatusProviderElement extends AutoDisposeProviderElement<bool>
    with IsInCartStatusRef {
  _IsInCartStatusProviderElement(super.provider);

  @override
  String get productId => (origin as IsInCartStatusProvider).productId;
}

String _$allProductsHash() => r'51fb936491ecbb1e2e71ae3ef680c5442c942deb';

/// See also [allProducts].
@ProviderFor(allProducts)
final allProductsProvider = AutoDisposeProvider<List<Product>>.internal(
  allProducts,
  name: r'allProductsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AllProductsRef = AutoDisposeProviderRef<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
