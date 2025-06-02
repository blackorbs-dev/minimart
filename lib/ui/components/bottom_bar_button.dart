import 'package:flutter/material.dart';

class BottomBarButton extends StatelessWidget{
  const BottomBarButton(this.text, {super.key, required this.onPressed, this.containerColor, this.contentColor});

  final String text;
  final VoidCallback onPressed;
  final Color? containerColor;
  final Color? contentColor;

  @override
  Widget build(BuildContext context) =>
      BottomAppBar(
          elevation: 6, shadowColor: Colors.black,
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 22, top: 16),
          child: FilledButton(
              onPressed: onPressed,
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(containerColor),
                  foregroundColor: WidgetStateProperty.all(contentColor),
                  shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  )
              ),
              child: Text(text)
          )
      );

}