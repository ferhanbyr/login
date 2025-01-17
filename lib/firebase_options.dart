// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCmhJx7XeYcdHBzIg4gOSlzYYo9KcodjDo',
    appId: '1:1008501319876:web:f0ace365b03ab694b7c191',
    messagingSenderId: '1008501319876',
    projectId: 'login-8a1',
    authDomain: 'login-8a1.firebaseapp.com',
    storageBucket: 'login-8a1.appspot.com',
    measurementId: 'G-RBZBZQHB51',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNjZzqFpA7fOfaYhEWHWnxXWiHHfwVBZk',
    appId: '1:1008501319876:android:81cb53872fa21aa0b7c191',
    messagingSenderId: '1008501319876',
    projectId: 'login-8a1',
    storageBucket: 'login-8a1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD32w9htjKukfMMDSy2_qHl4nd5Ffzrq6Q',
    appId: '1:1008501319876:ios:79cde9d451aaf44eb7c191',
    messagingSenderId: '1008501319876',
    projectId: 'login-8a1',
    storageBucket: 'login-8a1.appspot.com',
    iosBundleId: 'com.example.project1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD32w9htjKukfMMDSy2_qHl4nd5Ffzrq6Q',
    appId: '1:1008501319876:ios:79cde9d451aaf44eb7c191',
    messagingSenderId: '1008501319876',
    projectId: 'login-8a1',
    storageBucket: 'login-8a1.appspot.com',
    iosBundleId: 'com.example.project1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCmhJx7XeYcdHBzIg4gOSlzYYo9KcodjDo',
    appId: '1:1008501319876:web:1ed7be0d6f732860b7c191',
    messagingSenderId: '1008501319876',
    projectId: 'login-8a1',
    authDomain: 'login-8a1.firebaseapp.com',
    storageBucket: 'login-8a1.appspot.com',
    measurementId: 'G-8ZB1ZXFL5S',
  );

}