import 'package:firebase_database/firebase_database.dart';

Future<String> fetchData(String name) async {
  try {
    final ref = FirebaseDatabase(databaseURL: "https://horoscope-fcbc5-default-rtdb.europe-west1.firebasedatabase.app/").reference();
    final snapshot = await ref.child('zodiacSigns').child(name).get();
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