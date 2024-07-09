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
    apiKey: 'AIzaSyCOF7cS4ZSaSAL779WFtlKoz6wxpb-VZdk',
    appId: '1:488944928560:web:6c6ef71ed36dd04c92eaf5',
    messagingSenderId: '488944928560',
    projectId: 'summer-2024-56a4a',
    authDomain: 'summer-2024-56a4a.firebaseapp.com',
    storageBucket: 'summer-2024-56a4a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9wma2WnYLXNlMIs2-jJaVBv0PetHLLWY',
    appId: '1:488944928560:android:86b6535d253f5a2392eaf5',
    messagingSenderId: '488944928560',
    projectId: 'summer-2024-56a4a',
    storageBucket: 'summer-2024-56a4a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbBPLIoverrbCgEPxlulvRlSIk08IJ9wE',
    appId: '1:488944928560:ios:58a0da9a9810a41b92eaf5',
    messagingSenderId: '488944928560',
    projectId: 'summer-2024-56a4a',
    storageBucket: 'summer-2024-56a4a.appspot.com',
    iosBundleId: 'com.example.firebaseSessionOne',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbBPLIoverrbCgEPxlulvRlSIk08IJ9wE',
    appId: '1:488944928560:ios:58a0da9a9810a41b92eaf5',
    messagingSenderId: '488944928560',
    projectId: 'summer-2024-56a4a',
    storageBucket: 'summer-2024-56a4a.appspot.com',
    iosBundleId: 'com.example.firebaseSessionOne',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCOF7cS4ZSaSAL779WFtlKoz6wxpb-VZdk',
    appId: '1:488944928560:web:80af7f48cf701fe792eaf5',
    messagingSenderId: '488944928560',
    projectId: 'summer-2024-56a4a',
    authDomain: 'summer-2024-56a4a.firebaseapp.com',
    storageBucket: 'summer-2024-56a4a.appspot.com',
  );
}