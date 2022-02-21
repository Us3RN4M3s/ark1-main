import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'Donations.dart';
import 'user.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(
              title: '',
            ),
        '/secondscreen': (context) => DonationsPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 7
  int _selectedIndex = 0;

// 8
  static List<Widget> pages = <Widget>[
    const Card1(),
    // TODO: Replace with Card2
    Container(color: Colors.green),
    // TODO: Replace with Card3
    Container(color: Colors.blue)
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Animal Rescue Kleberg"), //title of app
        backgroundColor:
            Color.fromARGB(255, 0, 0, 0), //background color of app bar
        brightness: Brightness
            .dark, //redAccent is darker color so set brightness to dark
        elevation: 5.0, //elevation value of appbar
        actions: [
          //actions widget in appbar
          IconButton(
              icon: const Icon(Icons.account_circle_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome5Solid.bone),
            label: 'Vet',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome5Solid.dog),
            label: 'Shelter',
          ),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}
