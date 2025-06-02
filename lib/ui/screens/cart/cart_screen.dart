import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/cart/cart_provider.dart';
import '../../../providers/cart/cart_state.dart';
import '../../components/bottom_bar_button.dart';
import '../../components/main_container.dart';
import 'details_item.dart';
import 'item_card.dart';

class CartScreen extends ConsumerWidget{
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final cartState = ref.watch(cartStateProvider);

    return Scaffold(
      body: MainContainer(
          title: 'Your Cart',
          child: cartState.items.isEmpty ?
              Center(
                child: Text('No items in your cart', style: theme.textTheme.bodyMedium),
              ) : CustomScrollView(
                    slivers: [
                      SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (ctx, index) {
                                final item = cartState.items.elementAt(index);
                                return CartItemCard(
                                    item: item,
                                    actionCallback: (action){
                                      ref.read(cartProvider.notifier)
                                          .handleAction(item.product.id, action);
                                    }
                                );
                              },
                              childCount: cartState.items.length
                          )
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6, top: 12),
                                child: Text('Order Info', style: theme.textTheme.labelLarge)
                            ),
                            DetailsItem(title: 'Subtotal', amount: cartState.subTotalAmount),
                            DetailsItem(title: 'Shipping', amount: cartState.shippingFee),
                            DetailsItem(title: 'Total', amount: cartState.totalAmount, textStyle: theme.textTheme.labelLarge),
                            const SizedBox(height: 12)
                          ]
                        )
                      )
                    ]
                  )
      ),
      bottomNavigationBar: cartState.items.isEmpty ? null
          : BottomBarButton(
          'Checkout (\$${cartState.totalAmount})',
          onPressed: ref.read(cartProvider.notifier).checkout
      ),
    );
  }

}