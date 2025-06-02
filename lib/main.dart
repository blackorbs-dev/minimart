import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ui/screens/home/home_screen.dart';
import 'ui/state/toast_listener.dart';
import 'ui/theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp(
      title: 'MiniMart',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      builder: (context, child) => Overlay(
        initialEntries: [
          OverlayEntry(builder: (_) => ToastMessageListener(child!))
        ]
      ),
      home: const HomeScreen(),
    );
  }
}
