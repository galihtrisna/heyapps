import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCTkaOtWcloVaFlABfk0GvmYTYqfMp8ZtY",
            authDomain: "heyapp-forus.firebaseapp.com",
            projectId: "heyapp-forus",
            storageBucket: "heyapp-forus.appspot.com",
            messagingSenderId: "750553069861",
            appId: "1:750553069861:web:8a3df9567fed967296c2cc",
            measurementId: "G-KSCZ3GBY0H"));
  } else {
    await Firebase.initializeApp();
  }
}
