import '../../models/product.dart';

enum CartAction{
  increase, decrease, remove
}

class CartItem{
  final Product product;
  final int quantity;

  CartItem({required this.product, required this.quantity});
}

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