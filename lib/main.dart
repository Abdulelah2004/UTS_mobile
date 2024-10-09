import 'package:flutter/material.dart';
import 'navbarpage1.dart'; // Home Page
import 'navbarpage2.dart'; // Status Page
import 'navbarpage3.dart'; // Profile Page

void main() {
  runApp(const MidApp());
}

//#TODO_1 Set the name of the statelessWidget Class
class MidApp extends StatelessWidget {
  const MidApp({super.key});

  //#TODO_3 Build MaterialApp and direct the home property to the statefulWidget Class
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//#TODO_2 Set the name of the statefulWidget Class
class WidgetApp extends StatefulWidget {
  const WidgetApp({super.key});

  @override
  State<WidgetApp> createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const NavbarPage1(), // Home
    const NavbarPage2(), // Status
    const NavbarPage3(), // Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Change the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    //#TODO_4 Build Scaffold
    return Scaffold(
      //#TODO_5 Create an AppBar with a rounded border
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0), // AppBar height
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 9, 16),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BellerConect',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.more_vert, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: _pages[_selectedIndex],

      //#TODO_6 Create a BottomNavBar with 3 navigation bars
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[200],
        onTap: _onItemTapped,
      ),
    );
  }
}
