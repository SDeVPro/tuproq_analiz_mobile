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
    apiKey: 'AIzaSyDS2zzScINzx0znRpHKiU5UPFWswpVvJco',
    appId: '1:419275667763:web:72fe32e59e81bcd203e646',
    messagingSenderId: '419275667763',
    projectId: 'agrigenie-d174f',
    authDomain: 'agrigenie-d174f.firebaseapp.com',
    storageBucket: 'agrigenie-d174f.appspot.com',
    measurementId: 'G-DB649HS5LN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIahAwROn-PNyJjRh4wQnvjQhXxrCaBn8',
    appId: '1:419275667763:android:6ff7ea73ca21d31803e646',
    messagingSenderId: '419275667763',
    projectId: 'agrigenie-d174f',
    storageBucket: 'agrigenie-d174f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_AldHUgF_V15Q7IvkpVt1PGPltEkRwVQ',
    appId: '1:419275667763:ios:e345baaf2cbae66703e646',
    messagingSenderId: '419275667763',
    projectId: 'agrigenie-d174f',
    storageBucket: 'agrigenie-d174f.appspot.com',
    iosClientId: '419275667763-i4gnqfeelh4n6m4g5aphjd26esdlg535.apps.googleusercontent.com',
    iosBundleId: 'com.example.agrigenie',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_AldHUgF_V15Q7IvkpVt1PGPltEkRwVQ',
    appId: '1:419275667763:ios:969016b5439b38bc03e646',
    messagingSenderId: '419275667763',
    projectId: 'agrigenie-d174f',
    storageBucket: 'agrigenie-d174f.appspot.com',
    iosClientId: '419275667763-tgv51bpkkgbgr1mffftocre93qaego9k.apps.googleusercontent.com',
    iosBundleId: 'com.example.agrigenie.RunnerTests',
  );
}