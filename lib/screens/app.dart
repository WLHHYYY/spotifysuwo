import 'package:flutter/material.dart';
import 'package:spotifyclone/screens/home.dart';
import 'package:spotifyclone/screens/search.dart';
import 'package:spotifyclone/screens/yourLibrary.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Tabs = [Home(), Search(), YourLibrary()];
  int currentTabIndex = 0;
  //UI DESIGN CODE
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (currentIndex) {
          currentTabIndex = currentIndex;
          setState(() {
            
          });
        },
        selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books, color: Colors.white),
              label: 'library')
        ],
      ),
    );
  }
}
