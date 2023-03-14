// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDMJAJlKIyZZtZS7XkNAbfnCicXyp4lVwk',
    appId: '1:311291728565:web:3e7e129e2f38c9b0d3a4fc',
    messagingSenderId: '311291728565',
    projectId: 'nazorecapp',
    authDomain: 'nazorecapp.firebaseapp.com',
    storageBucket: 'nazorecapp.appspot.com',
    measurementId: 'G-NMFY50LSBZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpvITxvMBJIQHG0x3DR7el2YBpO6c-SSc',
    appId: '1:311291728565:android:1c8ce27f21752d5cd3a4fc',
    messagingSenderId: '311291728565',
    projectId: 'nazorecapp',
    storageBucket: 'nazorecapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAW_3n-79mHsogd3E95tRUJIDwJgM0DO9E',
    appId: '1:311291728565:ios:0e1fa886e05eebd2d3a4fc',
    messagingSenderId: '311291728565',
    projectId: 'nazorecapp',
    storageBucket: 'nazorecapp.appspot.com',
    iosClientId: '311291728565-on3lt18ov4r44u2g7apmmmdg6qounsaj.apps.googleusercontent.com',
    iosBundleId: 'net.tanitanin.nazoRecApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAW_3n-79mHsogd3E95tRUJIDwJgM0DO9E',
    appId: '1:311291728565:ios:0e1fa886e05eebd2d3a4fc',
    messagingSenderId: '311291728565',
    projectId: 'nazorecapp',
    storageBucket: 'nazorecapp.appspot.com',
    iosClientId: '311291728565-on3lt18ov4r44u2g7apmmmdg6qounsaj.apps.googleusercontent.com',
    iosBundleId: 'net.tanitanin.nazoRecApp',
  );
}