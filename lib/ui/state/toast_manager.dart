import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../components/toast_card.dart';

class ToastManager{

  OverlayEntry? _currentEntry;
  Timer? _timer;

  void show(BuildContext context, String message){
    _clearCurrent();

    _currentEntry = OverlayEntry(builder: (context) => ToastCard(message: message));
    Overlay.of(context).insert(_currentEntry!);
    _timer = Timer(const Duration(seconds: 3), () {
      _clearCurrent();
    });
  }

  void _clearCurrent(){
    _currentEntry?.remove();
    _currentEntry = null;
    _timer?.cancel();
    _timer = null;
  }
}