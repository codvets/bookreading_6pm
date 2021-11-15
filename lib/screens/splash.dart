import 'package:book_reading/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/services.dart' show rootBundle;

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    loadUsers();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed(Home.routeName);
    });
    super.initState();
  }

  late String data;

  Future<void> loadUsers() async {
    this.data = await rootBundle.loadString("assets/data/users.json");
    print(data.runtimeType);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.bookReader,
              size: 135,
              color: Color(0XffDE9788),
            ),
            SizedBox(height: 20),
            Text('Book Reading',
                style: GoogleFonts.dancingScript(
                  fontSize: 50,
                  color: Colors.black87,
                )
                //  GoogleFonts.lato(

                // )
                ),
          ],
        ),
      ),
    );
  }
}
