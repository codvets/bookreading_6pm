import 'package:book_reading/screens/home.dart';
import 'package:book_reading/screens/splash.dart';
import 'package:flutter/material.dart';

class BookReading extends StatelessWidget {
  const BookReading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) {
          return Splash();
        },
        Home.routeName: (context) => Home()
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFBEAED),
      ),
    );
  }
}
