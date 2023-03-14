import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/memo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Memo> memoList = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future<void> fetchMemo() async {
    final memoCollection = await FirebaseFirestore.instance.collection('/memo').get();
    final docs = memoCollection.docs;
    for (var doc in docs) {
      Memo fetchMemo = Memo(
        title: doc.data()['title'],
        details: doc.data()['details'],
        createdDate: doc.data()['createdDate'],
      );
      memoList.add(fetchMemo);
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchMemo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: memoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(memoList[index].title),
            subtitle: Text(memoList[index].details),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
