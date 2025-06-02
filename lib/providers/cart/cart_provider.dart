import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/product.dart';
import '../toast/toast_message_provider.dart';
import 'entity.dart';

part 'cart_provider.g.dart';

@riverpod
class Cart extends _$Cart {

  void add(Product product) {
    state = {
      ...state,
      product.id: CartItem(
        product: product,
        quantity: 1,
      )
    };
    ref.read(toastMessageProvider.notifier)
        .update('Item has been added to cart');
  }

  void checkout(){
    state = {};
    ref.read(toastMessageProvider.notifier)
        .update('Your order has been placed');
  }

  void handleAction(String productId, CartAction action){
    switch(action){
      case CartAction.increase:
        _increase(productId);
        break;
      case CartAction.decrease:
        _decrease(productId);
        break;
      case CartAction.remove:
        _remove(productId);
    }
  }

  void _increase(String productId) {
    if (state.containsKey(productId)) {
      final item = state[productId]!;
      state = {
        ...state,
        productId: CartItem(product: item.product, quantity: item.quantity + 1),
      };
    }
  }

  void _decrease(String productId) {
    final item = state[productId]!;
    if (item.quantity > 1) {
      state = {
        ...state,
        productId: CartItem(product: item.product, quantity: item.quantity - 1),
      };
    }
  }

  void _remove(String productId) {
    final newState = {...state};
    newState.remove(productId);
    state = newState;
  }

  @override
  Map<String, CartItem> build() => {};
}