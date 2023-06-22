import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 0);

class Disc extends ConsumerWidget {
  const Disc({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    void incrementcounter() {
      ref.read(counterProvider.notifier).state++;
    }

    void decrementcounter() {
      if (counter > 0) {
        ref.read(counterProvider.notifier).state--;
      }
    }

    String numbercounter(int value) {
      return value < 10 ? '0$value' : value.toString();
    }

    return Container();
  }
}
