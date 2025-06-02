import 'package:flutter/cupertino.dart';

class SlideRoute extends PageRouteBuilder{
  SlideRoute({required Widget screen})
    : super(
      pageBuilder: (ctx, anim1, anim2) => screen,
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (ctx, anim, _, child) =>
          SlideTransition(
            position: anim.drive(
                Tween(
                  begin: const Offset(1, 0),
                  end: Offset.zero
                ).chain(CurveTween(curve: Curves.ease))
            ),
            child: child
          )
    );
}