import 'package:flutter/material.dart';
import 'Screens/Search/Search.dart';
import 'Screens/Playlists/Playlists.dart';
import 'Screens/BottomNavBar/BottomNavBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';
  // This widget is the root of your application, right when the application launches we will see the bottom navigation bar with it defaulting to the home screen.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: BottomBarWidget(),
    );
  }
}