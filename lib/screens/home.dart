import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(2.5, -1.5),
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xFFE9B0A3),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          'What are you\nreading today?',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.red,
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.orange,
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(color: Colors.amber),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                        // color: Colors.orange,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
