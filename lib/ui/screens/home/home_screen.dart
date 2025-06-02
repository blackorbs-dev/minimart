import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/product/product_provider.dart';
import '../../components/main_container.dart';
import '../../components/svg_icon.dart';
import 'bottom_bar.dart';
import 'product_card.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      body: MainContainer(
          title: 'Technology',
          headerContent: Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 10, right: 12),
              child: SearchBar(
                hintText: 'Search...',
                hintStyle: WidgetStateProperty.all(
                    theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.inverseSurface
                    )
                ),
                elevation: WidgetStateProperty.all(0),
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                constraints: const BoxConstraints(minHeight: 42, maxHeight: 42),
                leading: const SvgIcon('assets/icons/ic_search.svg'),
                shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                        side: BorderSide(color: theme.colorScheme.outline),
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
              )
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 6),
                child: Text('Smartphones, Laptops & Accessories', style: theme.textTheme.titleLarge)
            ),
            Expanded(child: Consumer(builder: (ctx, ref, child) {
              final allProducts = ref.watch(allProductsProvider);

              return GridView.builder(
                padding: const EdgeInsets.only(top: 8, bottom: 16),
                itemCount: allProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.68,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (ctx, i) => ProductCard(product: allProducts[i]),
              );
            })),
          ])
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
  
}