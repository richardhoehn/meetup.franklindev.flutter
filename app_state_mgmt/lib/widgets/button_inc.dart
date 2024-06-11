import 'package:app_state_mgmt/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonInc extends ConsumerWidget {
  const ButtonInc({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final vol = ref.watch(volumeProvider);

    return Column(
      children: [
        IconButton(
          icon: const Icon(Icons.volume_up),
          tooltip: 'Increase Volume',
          onPressed: () {
            ref.read(volumeProvider.notifier).increment();
          },
        ),
        const Text('Volume : Up')
      ],
    );
  }
}
