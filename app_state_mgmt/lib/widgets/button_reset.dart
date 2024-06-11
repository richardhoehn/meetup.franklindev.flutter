import 'package:app_state_mgmt/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonReset extends ConsumerWidget {
  const ButtonReset({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.read(volumeProvider.notifier).reset();
      },
      child: const Text('Reset Volume'),
    );
  }
}
