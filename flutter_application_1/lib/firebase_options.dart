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
    apiKey: 'AIzaSyCGixXW9z3qt5qRydy6SoTbGjmbpb2gJ30',
    appId: '1:1090068048176:web:24092a7f52b0fcb2b6c0f5',
    messagingSenderId: '1090068048176',
    projectId: 'new1-7a5b0',
    authDomain: 'new1-7a5b0.firebaseapp.com',
    storageBucket: 'new1-7a5b0.appspot.com',
    measurementId: 'G-FC59076384',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI3NYAUWQopp4IlhEoTAj48TSlU12KedU',
    appId: '1:1090068048176:android:d4f938a197ab54c6b6c0f5',
    messagingSenderId: '1090068048176',
    projectId: 'new1-7a5b0',
    storageBucket: 'new1-7a5b0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSgUSDAWUmv2nxkLL0iqXm48WJQDdCujs',
    appId: '1:1090068048176:ios:d3646d2b5a503677b6c0f5',
    messagingSenderId: '1090068048176',
    projectId: 'new1-7a5b0',
    storageBucket: 'new1-7a5b0.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSgUSDAWUmv2nxkLL0iqXm48WJQDdCujs',
    appId: '1:1090068048176:ios:b07fa9ce38c7305ab6c0f5',
    messagingSenderId: '1090068048176',
    projectId: 'new1-7a5b0',
    storageBucket: 'new1-7a5b0.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
