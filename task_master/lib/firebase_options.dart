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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCt6da4Lg0Gnxn-1EnpKmmwFLdppzOcToE',
    appId: '1:626689090336:web:a61875ec688cb82bba6d45',
    messagingSenderId: '626689090336',
    projectId: 'task-master-0542',
    authDomain: 'task-master-0542.firebaseapp.com',
    storageBucket: 'task-master-0542.appspot.com',
    measurementId: 'G-78FDXGPW40',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkUr3rcPHbgLuheUjZz8EfGzUalnMmMA4',
    appId: '1:626689090336:android:5a768113964b4e96ba6d45',
    messagingSenderId: '626689090336',
    projectId: 'task-master-0542',
    storageBucket: 'task-master-0542.appspot.com',
  );
}
