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
    apiKey: 'AIzaSyDiz5-k1dl4vRWXxG9oX-oG8sPfqlPL7xQ',
    appId: '1:332108066690:web:7f6722941a4728038c699b',
    messagingSenderId: '332108066690',
    projectId: 'job-project-32067',
    authDomain: 'job-project-32067.firebaseapp.com',
    storageBucket: 'job-project-32067.appspot.com',
    measurementId: 'G-9H3FQR27W7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArTHGszyKGx_2EsfUxf78w6RjhzRgyhV0',
    appId: '1:332108066690:android:33997cbf6258516e8c699b',
    messagingSenderId: '332108066690',
    projectId: 'job-project-32067',
    storageBucket: 'job-project-32067.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDzCxlY23c9rB8mXz2hXL1_iKeqOu6E6Tk',
    appId: '1:332108066690:ios:41217e1fafac3aaf8c699b',
    messagingSenderId: '332108066690',
    projectId: 'job-project-32067',
    storageBucket: 'job-project-32067.appspot.com',
    iosClientId: '332108066690-1rlku98mvqhoqp3rdlk2640kmglco64l.apps.googleusercontent.com',
    iosBundleId: 'com.example.financeMobileApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDzCxlY23c9rB8mXz2hXL1_iKeqOu6E6Tk',
    appId: '1:332108066690:ios:41217e1fafac3aaf8c699b',
    messagingSenderId: '332108066690',
    projectId: 'job-project-32067',
    storageBucket: 'job-project-32067.appspot.com',
    iosClientId: '332108066690-1rlku98mvqhoqp3rdlk2640kmglco64l.apps.googleusercontent.com',
    iosBundleId: 'com.example.financeMobileApp',
  );
}