import 'package:app_state_mgmt/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VolumeLevel extends ConsumerWidget {
  const VolumeLevel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vol = ref.watch(volumeProvider);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircularProgressIndicator(value: vol.toDouble() / 10, backgroundColor: Colors.grey, strokeWidth: 8,),
          SizedBox(height: 10,),
          Text('Volume : $vol')
        ],
      ),
    );
  }
}
