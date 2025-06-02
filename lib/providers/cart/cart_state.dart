import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'cart_provider.dart';
import 'entity.dart';
part 'cart_state.g.dart';

class CartState{
  final Iterable<CartItem> items;
  final String subTotalAmount;
  final String totalAmount;
  final String shippingFee;

  CartState({
    required this.items,
    required this.subTotalAmount,
    required this.totalAmount,
    required this.shippingFee
  });
}

@riverpod
CartState cartState(Ref ref){
  final cartItems = ref.watch(cartProvider).values;
  final shippingFee = 10.0 * cartItems.length;
  final double subTotal = cartItems.fold(0, (sum, item) => sum + item.product.price*item.quantity);

  return CartState(
      items: cartItems,
      subTotalAmount: subTotal.toStringAsFixed(0),
      totalAmount: (shippingFee + subTotal).toStringAsFixed(0),
      shippingFee: shippingFee.toStringAsFixed(0)
  );
}

@riverpod
int totalCartItems(Ref ref) =>
    ref.watch(cartProvider).values.fold(0, (sum, item) => sum + item.quantity);