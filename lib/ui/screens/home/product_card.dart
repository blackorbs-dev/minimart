import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../state/routes.dart';
import '../details/details_screen.dart';

class ProductCard extends StatelessWidget{
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          SlideRoute(screen: ProductDetailsScreen(product.id))
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product.image,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              product.name,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Text(
            '\$${product.price.toStringAsFixed(2)}',
            style: theme.textTheme.headlineSmall,
          )
        ]
      )
    );
  }

}