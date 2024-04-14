import 'package:flutter/material.dart';
import 'package:horoscope/pages/zodiacSigns/ZodiacSignScreen.dart';
import 'package:horoscope/pages/zodiacSigns/ZodiacSignsButton.dart';

import '../../api/req.dart';

class ZodiacSignsScreen extends StatelessWidget {
  const ZodiacSignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/zodiacSigns.jpg'), fit: BoxFit.cover),
        ),
        child: const Padding(
          padding: EdgeInsets.all(60.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Choose your zodiac sign',
                  style: TextStyle(color: Colors.amber, fontSize: 24),
                ),
                SizedBox(height: 30),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Capricorn'),
                  signName: 'Capricorn',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Aquarius'),
                  signName: 'Aquarius',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Pisces'),
                  signName: 'Pisces',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Aries'),
                  signName: 'Aries',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Taurus'),
                  signName: 'Taurus',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Gemini'),
                  signName: 'Gemini',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Cancer'),
                  signName: 'Cancer',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Leo'),
                  signName: 'Leo',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Virgo'),
                  signName: 'Virgo',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Libra'),
                  signName: 'Libra',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Scorpio'),
                  signName: 'Scorpio',
                ),
                ZodiacSignButton(
                  page: ZodiacSignScreen(name: 'Sagittarius'),
                  signName: 'Sagittarius',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
