import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAwusKEIUrOYw2hJL0QJvJm3rbbxN3fhx8",
            authDomain: "stock-vehiculos-suzuval.firebaseapp.com",
            projectId: "stock-vehiculos-suzuval",
            storageBucket: "stock-vehiculos-suzuval.firebasestorage.app",
            messagingSenderId: "919554171205",
            appId: "1:919554171205:web:114019ae7c5a322287de2c",
            measurementId: "G-KT75VB627D"));
  } else {
    await Firebase.initializeApp();
  }
}
