import 'package:flutter/material.dart';
import 'package:horoscope/pages/zodiacSign/CapricornScreen.dart';

class ZodiacSignScreen extends StatelessWidget {
  const ZodiacSignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/zodiacSign.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Choose your zodiac sign'),
              TextButton(
                onPressed: () {
                  _navigateToPage(context, CapricornScreen(sign: 'Capricorn'));
                },
                child: Text('Capricorn'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Aquarius'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Pisces'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Aries'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Taurus'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Gemini'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Cancer'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Leo'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Virgo'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Libra'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Scorpio'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Sagittarius'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void _navigateToZodiacSign(BuildContext context, String sign) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => SignDetailsScreen(sign: sign)),
  //   );
  // }
  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
