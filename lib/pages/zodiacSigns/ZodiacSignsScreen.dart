import 'package:flutter/material.dart';
import 'package:horoscope/pages/zodiacSigns/ZodiacSignScreen.dart';
import 'package:horoscope/pages/zodiacSigns/ZodiacSignsButton.dart';
import '../../api/req.dart';

class ZodiacSignsScreen extends StatefulWidget {
  const ZodiacSignsScreen({Key? key}) : super(key: key);

  @override
  _ZodiacSignsScreenState createState() => _ZodiacSignsScreenState();
}

class _ZodiacSignsScreenState extends State<ZodiacSignsScreen> {
  late Future<List<String>> _fetchDataFuture;

  @override
  void initState() {
    super.initState();
    _fetchDataFuture = fetchData();
  }

  @override
  Widget build(BuildContext context) {
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
                Text(
                  'Choose your zodiac sign',
                  style: TextStyle(color: Colors.amber, fontSize: 24),
                ),
                SizedBox(height: 30),
                FutureBuilder<List<String>>(
                  future: _fetchDataFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // Показываем индикатор загрузки, пока данные загружаются
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      // Показываем сообщение об ошибке, если что-то пошло не так
                      return Text('Error: ${snapshot.error}');
                    } else {
                      // Данные успешно загружены, создаем кнопки для каждого знака
                      List<String> zodiacSigns = snapshot.data ?? [];
                      return Column(
                        children: zodiacSigns.map((signName) {
                          return ZodiacSignButton(
                            page: ZodiacSignScreen(name: signName),
                            signName: signName,
                          );
                        }).toList(),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
