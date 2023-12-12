import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageAnimations { 

  static Duration duration = const Duration(milliseconds: 1500);

  final loiginText = FadeInLeft(
    duration: duration,
    child: Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Text(
        "Login",
        style: GoogleFonts.jost(
          fontWeight: FontWeight.w600,
          fontSize: 35,
        ),
      ),
    ),
  );

  final light1 = FadeInDown(
    duration: duration,
    child: Image.asset(
      "assets/light-1.png",
      color: const Color(0xff4a4a4a),
    ),
  );

  final light2 = FadeInDown(
    duration: duration,
    child: Image.asset(
      "assets/light-2.png",
      color: Colors.black,
    ),
  );

  final facebookButton = FadeInUp(
    duration: duration,
    from: 100,
    child: SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor:
              MaterialStateProperty.all(Colors.blue.withOpacity(0.50)),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          "LOGIN WITH FACEBOOK",
          style: GoogleFonts.jost(color: Colors.blue),
        ),
      ),
    ),
  );
}
