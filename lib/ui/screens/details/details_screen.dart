import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/cart/cart_provider.dart';
import '../../../providers/product/product_provider.dart';
import '../../components/bottom_bar_button.dart';
import '../../components/main_container.dart';
import '../../state/routes.dart';
import 'about_text.dart';
import 'favorite_button.dart';
import '../cart/cart_screen.dart';

class ProductDetailsScreen extends ConsumerWidget{
  const ProductDetailsScreen(this.productId, {super.key});

  final String productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final product = ref.watch(productProvider(productId));

    return Scaffold(
      body: MainContainer(
          title: 'Go back',
          child: product == null ? Center(
            child: Text('No product with id $productId'),
          ) : SingleChildScrollView(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Stack(
                    children: [
                      Image.asset(product.image, width: double.infinity, fit: BoxFit.fitWidth),
                      const Positioned(
                          right: 14, top: 14,
                          child: FavoriteButton()
                      )
                    ]
                ),
                const SizedBox(height: 10),
                Text(product.name, style: theme.textTheme.bodyLarge),
                Padding(
                    padding: const EdgeInsets.only(bottom: 14, top: 10),
                    child: Text('\$${product.price.toStringAsFixed(2)}', style: theme.textTheme.headlineLarge)
                ),
                const AboutText('About this item'),
                Column(
                  children: product.description.split(':')
                      .map((e) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: AboutText('•')
                        ),
                        Expanded(child: AboutText(e.trim()))
                      ]
                  )).toList(),
                ),
                const SizedBox(height: 16)
              ]
          ))
      ),
      bottomNavigationBar: product == null ? null :  Consumer(builder: (ctx, ref, child) {
          final isInCart = ref.watch(isInCartStatusProvider(productId));

          return BottomBarButton(
              isInCart ? 'Added to cart' : 'Add to cart',
              onPressed: (){
                if(isInCart){
                  Navigator.of(context).push(
                      SlideRoute(screen: const CartScreen())
                  );
                }
                else {
                  ref.read(cartProvider.notifier).add(product);
                }
              },
              containerColor: isInCart ? theme.colorScheme.outline : null,
              contentColor: isInCart ? theme.colorScheme.primaryContainer : null
          );
      })
    );
  }

}