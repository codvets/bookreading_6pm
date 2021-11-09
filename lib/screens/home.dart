import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World FROM HOME',
        ),
      ),
    );
  }
}