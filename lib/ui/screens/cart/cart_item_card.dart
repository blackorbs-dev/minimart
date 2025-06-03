import 'package:flutter/material.dart';

import '../../../providers/cart/entity.dart';
import '../../components/svg_icon.dart';

class CartItemCard extends StatelessWidget{
  const CartItemCard({super.key, required this.item, required this.actionCallback});
  
  final CartItem item;
  final void Function(CartAction) actionCallback;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(top: 12),
      child: Padding(
          padding: const EdgeInsets.all(6),
          child: Row(children: [
            Image.asset(item.product.image, width: 108, height: 108, fit: BoxFit.fitWidth),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6),
                  Text(item.product.name, maxLines: 2, style: theme.textTheme.bodySmall),
                  Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 4),
                    child: Text(
                        '\$${item.product.price.toStringAsFixed(2)}',
                        style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant
                        )
                    )
                  ),
                  Text('In stock', style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.tertiary)),
                  const SizedBox(height: 4),
                  Row(children: [
                    IconButton.filled(
                        onPressed: () => actionCallback(CartAction.decrease),
                        constraints: const BoxConstraints(maxHeight: 36, maxWidth: 36),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(theme.colorScheme.outline)
                        ),
                        icon: SvgIcon(
                          'assets/icons/ic_minus.svg',
                          color: theme.colorScheme.primaryContainer
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text(
                          '${item.quantity}',
                          style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant)
                      )
                    ),
                    Container(
                        constraints: const BoxConstraints(maxHeight: 36, maxWidth: 36),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: theme.colorScheme.outline)
                      ),
                      child: IconButton.filled(
                          onPressed: () => actionCallback(CartAction.increase),
                          constraints: const BoxConstraints(maxHeight: 36, maxWidth: 36),
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(theme.colorScheme.onPrimary)
                          ),
                          icon: SvgIcon(
                              'assets/icons/ic_add.svg',
                              color: theme.colorScheme.onSurface
                          )
                      )
                    ),
                    const Spacer(),
                    IconButton.filled(
                        onPressed: () => actionCallback(CartAction.remove),
                        constraints: const BoxConstraints(maxHeight: 36, maxWidth: 36),
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(theme.colorScheme.onPrimary)
                        ),
                        icon: SvgIcon(
                          'assets/icons/ic_delete.svg',
                          color: theme.colorScheme.secondaryContainer
                        )
                    )
                  ])
                ]
              )
            ))
          ])
      )
    );
  }

}