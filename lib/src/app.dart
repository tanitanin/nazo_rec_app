import 'package:flutter/material.dart';
import 'pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NazoRec App',
      theme: ThemeData (
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'NazoRec App - Splash Page'),
    );
  }
}
