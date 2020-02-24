import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/menu_drawer.dart';
import 'package:moodowon_orebro/screens/contact_screen.dart';
import 'package:moodowon_orebro/screens/image_gallery_screen.dart';
import 'package:moodowon_orebro/screens/main_screen.dart';
import 'package:moodowon_orebro/screens/membership_screen.dart';
import 'package:moodowon_orebro/screens/sport_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    const MainScreen(),
    const SportScreen(),
    const MembershipScreen(),
    const ImageGalleryScreen(),
    const ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        title: SizedBox(
          height: 35.0,
          child: Image.asset("images/main_logo.png"),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: MenuDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Hem'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            title: Text('Kampsport'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Medlem'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            title: Text('Bilder'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Kontakt'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
