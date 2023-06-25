import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/home_screen_provider.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final memoList = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NazoRec App - Home Page'),
      ),
      body: Text(
          'You have pushed the button this many times: ${ref.watch(homeScreenProvider).count}'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(homeScreenProvider).count++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
