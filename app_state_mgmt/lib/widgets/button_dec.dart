import 'package:app_state_mgmt/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonDec extends ConsumerWidget {
  const ButtonDec({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Build');
    return Column(
      children: [
        IconButton(
          icon: const Icon(Icons.volume_down),
          tooltip: 'Decrease Volume',
          onPressed: () {
            ref.read(volumeProvider.notifier).decrement();
          },
        ),
        const Text('Volume : Down')
      ],
    );
  }
}
