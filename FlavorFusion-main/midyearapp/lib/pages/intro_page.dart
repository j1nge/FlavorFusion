import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midyearapp/components/button.dart';
import 'package:midyearapp/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 25),
                Text(
                  "FLAVOR FUSION",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('lib/images/fast-food.png'),
                ),
                const SizedBox(height: 25),
                Text(
                  "THE TASTE OF EVERY FLAVOR",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                    "Feel the taste of the most popular foods anytime anywhere",
                    style: TextStyle(
                      color: Colors.grey[300],
                      height: 2,
                    )),
                const SizedBox(height: 25),
                MyButton(
                    text: "Get Started",
                    onTap: () {
                      Navigator.pushNamed(context, '/menupage');
                    }),
              ],
            )));
  }
}
