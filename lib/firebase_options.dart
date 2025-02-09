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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDM1PcevhiG-BvYJssHbjDWTUm8lw-9AY',
    appId: '1:193254357315:android:3b122ea235f4d0f277d7f6',
    messagingSenderId: '193254357315',
    projectId: 'youperfectprod',
    storageBucket: 'youperfectprod.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0aKhdm8yr7PUcSavvTk44Nh0-lKJlsNI',
    appId: '1:193254357315:ios:151a9df75dfacb8f77d7f6',
    messagingSenderId: '193254357315',
    projectId: 'youperfectprod',
    storageBucket: 'youperfectprod.firebasestorage.app',
    androidClientId: '193254357315-q2ubmub80ponoecs9qkl34hsjga22bnu.apps.googleusercontent.com',
    iosClientId: '193254357315-ls92dbakjkgmnkm6a3f4teskrla4iv00.apps.googleusercontent.com',
    iosBundleId: 'com.youperfect.app',
  );
}
