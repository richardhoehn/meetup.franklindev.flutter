import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define a VolumeNotifier class that extends StateNotifier<int>
class VolumeNotifier extends StateNotifier<int> {
  VolumeNotifier() : super(5);

  // Method to increment the counter
  void increment() {
    if (state < 10) {
      state++;
    }
  }

  // Method to decrement the counter
  void decrement() {
    if (state > 0) {
      state--;
    }
  }

  // Method to reset the counter
  void reset() {
    state = 5;
  }
}

// Create a provider for the VolumeNotifier
final volumeProvider = StateNotifierProvider<VolumeNotifier, int>((ref) {
  return VolumeNotifier();
});
