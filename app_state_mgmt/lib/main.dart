import 'package:app_state_mgmt/widgets/button_dec.dart';
import 'package:app_state_mgmt/widgets/button_inc.dart';
import 'package:app_state_mgmt/widgets/button_reset.dart';
import 'package:app_state_mgmt/widgets/volume_level.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // Wrap the app in a ProviderScope to provide Riverpod state management
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('State Mgmt.'), centerTitle: true,),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VolumeLevel(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonInc(),
                  ButtonDec(),
                ],
              ),
              ButtonReset(),
            ],
          ),
        ),
      ),
    );
  }
}
