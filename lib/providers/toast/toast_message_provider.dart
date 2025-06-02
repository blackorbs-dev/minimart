import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../ui/state/toast_manager.dart';

part 'toast_message_provider.g.dart';

@Riverpod(keepAlive: true)
ToastManager toastManager(Ref ref) => ToastManager();

@riverpod
class ToastMessage extends _$ToastMessage{

  void update(String? newMessage){
    state = newMessage;
  }

  @override
  String? build() => null;
}