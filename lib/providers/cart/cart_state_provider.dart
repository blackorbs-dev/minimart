import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'cart_items_provider.dart';
import 'entity.dart';

part 'cart_state_provider.g.dart';

@riverpod
CartState cartState(Ref ref){
  final cartItems = ref.watch(cartItemsProvider).values;
  final shippingFee = 10 * cartItems.length;
  final double subTotal = cartItems.fold(0, (sum, item) => sum + item.product.price*item.quantity);

  return CartState(
      items: cartItems,
      subTotalAmount: subTotal.toStringAsFixed(0),
      totalAmount: (shippingFee + subTotal).toStringAsFixed(0),
      shippingFee: '$shippingFee'
  );
}

@riverpod
int totalCartItems(Ref ref) =>
    ref.watch(cartItemsProvider).values.fold(0, (sum, item) => sum + item.quantity);