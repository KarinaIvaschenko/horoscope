import 'package:horoscope/pages/OpenAppScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBRpd53QIO0wVR7z4kwYdVNTXIZRTOoDW8",
          appId: "1:1067905781367:android:9cc0cdaaab9d2300bf8072",
          messagingSenderId: "1067905781367",
          projectId: "horoscope-2e4b9"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(bodyText1: TextStyle(color: Color(0xFFFFFFFF))),
      ),
      home: OpenAppScreen(),
    );
  }
}
