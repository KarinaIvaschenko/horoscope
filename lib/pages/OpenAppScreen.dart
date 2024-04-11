import 'package:flutter/material.dart';
import 'package:horoscope/pages/zodiacSign/ZodiacSignScreen.dart';

class OpenAppScreen extends StatelessWidget {
  const OpenAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/horoscope_main.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ZodiacSignScreen()),
                );
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
            child: Padding(
              child: Text('Start', style: TextStyle(color: Colors.white, fontSize: 42),),
              padding: EdgeInsets.all(15.0),
            ),
          ),
        ),
      ),
    );
  }
}
