import 'package:flutter/material.dart';

import 'screens/base/base_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XLO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseScreen(),
    );
  }
}
