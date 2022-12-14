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
    apiKey: 'AIzaSyCve8vr-QLWO7QA5JWbli3yo1vFsHSjBUQ',
    appId: '1:436799518757:web:dc3a9b6a6eae36d79fe7cc',
    messagingSenderId: '436799518757',
    projectId: 'mrca-ea46d',
    authDomain: 'mrca-ea46d.firebaseapp.com',
    storageBucket: 'mrca-ea46d.appspot.com',
    measurementId: 'G-DTX56Q933R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhiDcvx1jtRxkvG8yJolozjRXQ4yn4vM0',
    appId: '1:436799518757:android:b51f071d2961ffe29fe7cc',
    messagingSenderId: '436799518757',
    projectId: 'mrca-ea46d',
    storageBucket: 'mrca-ea46d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzud6JUqGVLKtvnjEdilbi9joRq1QOJXo',
    appId: '1:436799518757:ios:016832c0a42056fd9fe7cc',
    messagingSenderId: '436799518757',
    projectId: 'mrca-ea46d',
    storageBucket: 'mrca-ea46d.appspot.com',
    iosClientId:
    '436799518757-v2199i5kuamtumn2a9rnfcbnunufid5t.apps.googleusercontent.com',
    iosBundleId: 'com.dev.mrcateam.mrca',
  );
}