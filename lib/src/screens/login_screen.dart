import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ログイン画面
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ログイン画面',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('ログイン'),
              onPressed: () async {
                // ログイン処理
                FirebaseAuth.instance.authStateChanges().listen((User? user) {
                  if (user == null) {
                    print('User is currently signed out!');
                  } else {
                    print('User is signed in!');
                  }
                });

                // ログイン後はホーム画面へ遷移
                final result = await Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
