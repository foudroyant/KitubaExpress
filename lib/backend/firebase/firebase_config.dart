import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAX5wwQstTrCvGCBczG3aSX1voz1iWI3rw",
            authDomain: "dictionnaire-f081a.firebaseapp.com",
            projectId: "dictionnaire-f081a",
            storageBucket: "dictionnaire-f081a.appspot.com",
            messagingSenderId: "723814954869",
            appId: "1:723814954869:web:eebe893b2e43b47ca9053c",
            measurementId: "G-S8R1GGMD59"));
  } else {
    await Firebase.initializeApp();
  }
}
