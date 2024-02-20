import 'package:first_app/Information.dart';
import 'package:first_app/restaurant.dart';
import 'package:flutter/material.dart';

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _currentIndex == 1 ? Information() : restaurant(),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            enableFeedback: false,
            currentIndex: _currentIndex,
            onTap: (value) {
              _currentIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.library_add), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.library_add), label: ""),
            ]));
  }
}
