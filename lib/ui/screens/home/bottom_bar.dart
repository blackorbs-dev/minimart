import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/cart/cart_state_provider.dart';
import '../../components/svg_icon.dart';
import '../../state/routes.dart';
import '../cart/cart_screen.dart';

class BottomNavBar extends StatelessWidget{
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return NavigationBar(
      onDestinationSelected: (index){
        if(index == 1){
          Navigator.of(context).push(
              SlideRoute(screen: const CartScreen())
          );
        }
      },
      elevation: 6,
      shadowColor: Colors.black,
      indicatorColor: theme.colorScheme.primary,
      destinations: [
        navBarItem('assets/icons/ic_home.svg', 'Home'),
        NavigationDestination(
            label: 'Cart',
            icon: Consumer(
                builder: (ctx, ref, child){
                  final totalCartItems = ref.watch(totalCartItemsProvider);
                  return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const SvgIcon('assets/icons/ic_shopping_cart.svg'),
                        if(totalCartItems > 0) Positioned(
                            right: -14, top: -8,
                            child: Container(
                                padding: const EdgeInsets.all(4),
                                alignment: Alignment.center,
                                constraints: const BoxConstraints(minWidth: 26, minHeight: 26),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onInverseSurface,
                                    shape: BoxShape.circle
                                ),
                                child: Text(
                                    '$totalCartItems',
                                    style: theme.textTheme.labelLarge?.copyWith(
                                        fontSize: 11, color: theme.colorScheme.onPrimary
                                    )
                                )
                            )
                        )
                      ]
                  );
                }
            )
        ),
        navBarItem('assets/icons/ic_favorite.svg', 'Favorites'),
        navBarItem('assets/icons/ic_user_circle.svg', 'Profile'),
      ],
    );
  }

  NavigationDestination navBarItem(String assetName, String label) =>
      NavigationDestination(
          label: label,
          icon: SvgIcon(assetName),
          selectedIcon: SvgIcon(assetName, color: Colors.white)
      );

}