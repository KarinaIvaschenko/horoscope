import 'package:flutter/material.dart';
import 'package:horoscope/pages/zodiacSigns/ZodiacSignBackButton.dart';

import '../../api/req.dart';

class ZodiacSignScreen extends StatelessWidget {
  final String name;

  const ZodiacSignScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$name.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
                const SizedBox(height: 20),
                FutureBuilder<String>(
                  future: fetchDataDayOfWeek(name),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return Text(
                        snapshot.data ?? 'No data available',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          height: 2.0,
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(height: 20),
                const ZodiacSignBackButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}