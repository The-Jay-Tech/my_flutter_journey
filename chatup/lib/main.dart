import 'package:chatup/NavBar/chat.dart';
import 'package:chatup/NavBar/profile.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

int _selectedIndex = 0;
List<Widget> widgetList = [
  ChatPage(),
  ProfilePage(),
];
// List<String> appBartitle = [
//   'ChatUp',
//   'Search',
//   'Stories',
//   'My Profile',
// ];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        dividerColor: Colors.black,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigoAccent),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.face,
              color: Colors.indigoAccent,
            ),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int currentIndex) {
    setState(() {
      _selectedIndex = currentIndex;
    });
  }
}
