import 'package:firebase_app_check/firebase_app_check.dart';

Future initializeFirebaseAppCheck() => FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: '6LdMdVMlAAAAAO1TgEFOH9bWOhpxshGSb2zJvSZe',
      androidProvider: AndroidProvider.playIntegrity,
    );
