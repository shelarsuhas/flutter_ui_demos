import 'package:flutter/material.dart';

import 'navigation_list.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: Text('Flutter UI Demos'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: NavigationList(),
        ),
      ),
    );
  }
}
