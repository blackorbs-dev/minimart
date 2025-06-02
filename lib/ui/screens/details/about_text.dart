import 'package:flutter/material.dart';

class AboutText extends StatelessWidget{
  const AboutText(this.data, {super.key});

  final String data;

  @override
  Widget build(BuildContext context) => Text(
      data, style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.secondaryContainer
      )
  );

}