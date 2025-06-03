import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/dummy_products.dart';
import '../../models/product.dart';
import '../cart/cart_items_provider.dart';
part 'product_provider.g.dart';

@riverpod
Product? product(Ref ref, String productId) =>
    ref.read(allProductsProvider)
        .firstWhereOrNull((p) => p.id == productId);

@riverpod
bool isInCartStatus(Ref ref, String productId) =>
    ref.watch(cartItemsProvider).containsKey(productId);

@riverpod
List<Product> allProducts(Ref ref) => dummyProducts;