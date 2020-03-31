import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_up), title: Text('Progress')),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), title: Text('Chat')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('My Account'))
          ],
          onTap: (index){
            setState(() {
              _currentIndex =index;
            });
          },
        ),
      ),
    );
  }
}
