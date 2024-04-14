import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';

Future<String> fetchDataDayOfWeek(String name) async {
  DateTime now = DateTime.now();
  DateFormat formatter = DateFormat('EEEE', 'en_US');
  String formatted = formatter.format(now).toLowerCase();
  print(formatted);
  try {
    final ref = FirebaseDatabase(databaseURL: "https://horoscope-fcbc5-default-rtdb.europe-west1.firebasedatabase.app/").reference();
    final snapshot = await ref.child('zodiacSigns').child(name).child(formatted).get();
    if (snapshot.exists) {
      print(snapshot.value);
      return snapshot.value.toString();
    } else {
      print('No data available.');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
  return '';
}


Future<List<String>> fetchData() async {
  try {
    final ref = FirebaseDatabase(databaseURL: "https://horoscope-fcbc5-default-rtdb.europe-west1.firebasedatabase.app/").reference();
    final snapshot = await ref.child('zodiacSigns').get();
    if (snapshot.exists) {
      Map<dynamic, dynamic>? data = snapshot.value as Map?;
      if (data != null) {
        List<String> keys = data.keys.cast<String>().toList();
        print('Keys: $keys');
        return keys;
      }
    } else {
      print('No data available.');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
  return [];
}