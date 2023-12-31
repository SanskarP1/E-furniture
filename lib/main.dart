import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rohi_app/Screens/Onboardings/boarding.dart';

void main(List<String> args) {
  runApp(
    const ProviderScope(
      child: Roohi(),
    ),
  );
}

class Roohi extends ConsumerWidget {
  const Roohi({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Starting(),
      builder: (context, child) {
        return ScrollConfiguration(
            behavior: MyCustomScrollBehavior(), child: child!);
      },
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
