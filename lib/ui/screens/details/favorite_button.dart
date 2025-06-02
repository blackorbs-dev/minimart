import 'package:flutter/material.dart';

import '../../components/svg_icon.dart';

class _FavButtonState extends State<FavoriteButton>{

  bool isFavorite = false;

  void _toggle(){
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context){
    final theme = Theme.of(context);

    return IconButton.filled(
          onPressed: _toggle,
          padding: const EdgeInsets.all(12),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(theme.colorScheme.onPrimary)
          ),
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation, child: child
            ),
            child: SvgIcon(
              isFavorite ? 'assets/icons/ic_favorite_filled.svg' : 'assets/icons/ic_favorite.svg',
              key: ValueKey(isFavorite),
              color: isFavorite ? theme.colorScheme.error : theme.colorScheme.onSurface
            ),
          )
      );
  }

}

class FavoriteButton extends StatefulWidget{
  const FavoriteButton({super.key});

  @override
  State<StatefulWidget> createState() => _FavButtonState();
}