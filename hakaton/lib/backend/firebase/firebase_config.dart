import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCzQlash9yyLZ4BL0vcwAExpMBy4yjvxh4",
            authDomain: "hakaton-8e841.firebaseapp.com",
            projectId: "hakaton-8e841",
            storageBucket: "hakaton-8e841.appspot.com",
            messagingSenderId: "776345650498",
            appId: "1:776345650498:web:927b128c0b6997ba9174db"));
  } else {
    await Firebase.initializeApp();
  }
}
