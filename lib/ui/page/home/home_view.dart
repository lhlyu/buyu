import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '首页',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}