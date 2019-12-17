import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student_market_app/services/user_details.dart';

import './pages/login.dart';
import './pages/search.dart';
import './pages/sell.dart';
import './pages/profile.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) => Login(),
        "/home": (context) => Home(),
      },
    ));

class Home extends StatefulWidget {
  final UserDetails userDetails;

  Home({Key key, this.userDetails}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedPage = 0;
   List <Widget> _pageOptions() => [
    Search(),
    Sell(),
    Profile(userDetails: widget.userDetails,),
  ];

  @override
  Widget build(BuildContext context) {
    final pageOptions = _pageOptions();
    return Scaffold(
      body: pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 30),
        selectedFontSize: 14,
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
              ),
              title: Text("Discover")),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plus),
            title: Text("Sell"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userAlt),
            title: Text("Profil"),
          )
        ],
      ),
    );
  }
}