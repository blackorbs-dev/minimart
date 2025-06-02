import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'svg_icon.dart';

class MainContainer extends StatelessWidget{
  const MainContainer({super.key, required this.title, this.headerContent, required this.child});

  final String title;
  final Widget? headerContent;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(child: ColoredBox(
      color: theme.colorScheme.onPrimary,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DottedBorder(
                    color: theme.colorScheme.secondary,
                    padding: EdgeInsets.zero,
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary
                        ),
                        child: Text("Full Logo", style: theme.textTheme.labelSmall?.copyWith(color: theme.colorScheme.secondary))
                    )
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 8),
                      Text("DELIVERY ADDRESS", style: theme.textTheme.labelSmall),
                      const SizedBox(height: 6),
                      Text("Umuezike Road, Oyo State", style: theme.textTheme.labelSmall?.copyWith(fontSize: 13))
                    ]
                ),
                IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    alignment: Alignment.topCenter,
                    icon: const SvgIcon('assets/icons/ic_notification.svg')
                )
              ]
          ),
        ),
        if(headerContent != null) headerContent!,
        const SizedBox(height: 6),
        Divider(color: theme.colorScheme.outline, height: 1),
        Row(children: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: const SvgIcon('assets/icons/ic_arrow_left.svg')
          ),
          Text(title, style: theme.textTheme.headlineMedium)
        ]),
        Expanded(child: Container(
            color: theme.colorScheme.surface,
            padding: const EdgeInsets.only(right: 18, left: 18),
            child: child
        ))
      ])
    ));
  }

}