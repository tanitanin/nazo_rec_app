
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/home_screen_provider.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final homeScreenProvider = StateProvider((ref) => HomeScreenProvider());
  final countProvider = StateProvider((ref) => 0);
  final memoList = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NazoRec App - Home Page'),
      ),
      body: ListView.builder(
        itemCount: memoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(memoList[index].title),
            subtitle: Text(memoList[index].details),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => MemoDetailPage(memoList[index])));
            },
          );
        },
      ),
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
