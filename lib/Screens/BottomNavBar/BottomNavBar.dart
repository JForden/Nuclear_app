import 'package:flutter/material.dart';
import '../Search/Search.dart';
import '../Playlists/Playlists.dart';
import '../../main.dart';
import '../HomeScreen/HomeScreen.dart';



class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  //page selection index
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  //list of pages
  final List<Widget> _widgetOptions2 = [
    HomePage(),
    Search(),
    Playlists(),
  ];

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;//we set the state to the index of the selected page and then we rebuild the widget
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions2[_selectedIndex],//the body is the current page, we use the index to grab the correct page via the list of pages
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play_outlined),
            label: 'Playlists',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,//when a user taps the bottom navigation bar, we call the function to change the page
        //OnTap: ()
      ),
    );
  }
}