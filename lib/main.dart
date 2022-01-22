import '/screens/trip_details_screen.dart';
import 'package:flutter/material.dart';
import 'screens/add_new_trip_screen.dart';
import 'screens/edit_profile_screen.dart';
import 'screens/edit_trip_screen.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        AddNewTrip.routeName: (ctx) => AddNewTrip(),
        TripDetailsScreen.routeName: (ctx) => TripDetailsScreen(),
        EditTripScreen.routeName: (ctx) => EditTripScreen(),
        EditProfileScreen.routeName: (ctx) => EditProfileScreen(),
      },
    );
  }
}
