import 'package:flutter/material.dart';

class AmountItem extends StatelessWidget{
  const AmountItem({super.key, required this.title, required this.amount, this.textStyle});

  final String title;
  final String amount;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: theme.textTheme.labelMedium),
            Text('\$$amount', style: textStyle ?? theme.textTheme.labelMedium)
          ]
      )
    );
  }

}