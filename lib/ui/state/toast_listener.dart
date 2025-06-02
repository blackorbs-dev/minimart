import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/toast/toast_message_provider.dart';

class ToastMessageListener extends ConsumerWidget{
  const ToastMessageListener(this.child, {super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(toastMessageProvider, (_, message){
      if(message != null){
        ref.read(toastManagerProvider).show(context, message);
        Future.microtask((){
          ref.read(toastMessageProvider.notifier).update(null);
        });
      }
    });
    return child;
  }

}