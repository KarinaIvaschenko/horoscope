import 'package:horoscope/pages/OpenAppScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAQYX98y40ZMiDSRM1Gk06K0WmpJb6gSDA",
          appId: "1:489492175696:android:ed3322031ddc8f56a6aa55",
          messagingSenderId: "489492175696",
          projectId: "horoscope-fcbc5"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(bodyText1: TextStyle(color: Color(0xFFFFFFFF))),
      ),
      home: const OpenAppScreen(),
    );
  }
}
