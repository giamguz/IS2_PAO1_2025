import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCdmN5EyV1sWkDZWcuKgRb6EOVx_wFDJdE",
            authDomain: "homeservice-r-gwt4wv.firebaseapp.com",
            projectId: "homeservice-r-gwt4wv",
            storageBucket: "homeservice-r-gwt4wv.firebasestorage.app",
            messagingSenderId: "115924371379",
            appId: "1:115924371379:web:ca1d3a10bda21375066dc6"));
  } else {
    await Firebase.initializeApp();
  }
}
