import 'package:flutter/material.dart';
import 'dart:async';
import 'explore_page.dart';
import 'categories_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: size.height * 0.25),
        child: Column(
          children: [
            Image.asset(
              'lib/images/icon.png',
              fit: BoxFit.contain,
            ),
            Text(
              "Grip-N-Sip",
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'concertOne',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List _screens = [ExplorePage(), CategoriesPage()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.black54,
          indicatorColor: Colors.orange,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              color: Colors.grey[700],
              fontFamily: 'concertOne',
            ),
          ),
        ),
        child: NavigationBar(
          height: 70,
          selectedIndex: _currentIndex,
          onDestinationSelected: _updateIndex,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Explore',
            ),
            NavigationDestination(
              icon: Icon(Icons.apps_outlined),
              label: 'Categories',
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
    );
  }
}
