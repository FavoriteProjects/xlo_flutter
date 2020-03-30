import 'package:flutter/material.dart';
import 'package:xlo/screens/home/home_screen.dart';

class BaseScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen(),
          Container(color: Colors.blue),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.red),
        ],
      ),
    );
  }
}
