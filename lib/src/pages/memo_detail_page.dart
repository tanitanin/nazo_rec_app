import 'dart:html';

import 'package:flutter/material.dart';

import '../models/memo.dart';

class MemoDetailPage extends StatelessWidget {
  final Memo memo;

  const MemoDetailPage(this.memo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(memo.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  'Details',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                memo.details,
                style: const TextStyle(
                  fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
