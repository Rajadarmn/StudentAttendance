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
    apiKey: 'AIzaSyC0YAbcdXIgcaLkxiljCtYHalARibkaUgw',
    appId: '1:341667049634:web:b943373ae15a952e4be7fb',
    messagingSenderId: '341667049634',
    projectId: 'my-student-absences',
    authDomain: 'my-student-absences.firebaseapp.com',
    storageBucket: 'my-student-absences.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBVPINY0mGTcm4vzysxzS5zBEaDXm2x5S4',
    appId: '1:341667049634:android:73695350fb28c20a4be7fb',
    messagingSenderId: '341667049634',
    projectId: 'my-student-absences',
    storageBucket: 'my-student-absences.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBEdnzyta6pPNecfuX9o45sDhsCqMMYwHo',
    appId: '1:341667049634:ios:080e2ba6969f7ebc4be7fb',
    messagingSenderId: '341667049634',
    projectId: 'my-student-absences',
    storageBucket: 'my-student-absences.firebasestorage.app',
    iosBundleId: 'com.example.studentsAttendanceWithMlkit',
  );
}
