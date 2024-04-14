import 'package:flutter/material.dart';
import 'package:horoscope/pages/zodiacSigns/ZodiacSignBackButton.dart';

class ZodiacSignScreen extends StatelessWidget {
  final String name;

  const ZodiacSignScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    String qqq = name;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/zodiacSigns.jpg'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(name,
                    style: TextStyle(color: Colors.white, fontSize: 24)),
                const SizedBox(height: 20),
                Text('Тут будет текст', style: TextStyle(color: Colors.white, fontSize: 18)),
                const SizedBox(height: 20),
                ZodiacSignBackButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
