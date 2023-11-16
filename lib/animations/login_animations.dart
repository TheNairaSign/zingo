import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/widgets/black_button.dart';

class LoginPageAnimations {
  static Duration duration = const Duration(seconds: 1);

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

  final tf1 = FadeInDown(
    duration: duration,
    child: TextField(
      cursorColor: Colors.black,
      enabled: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: "Email",
        contentPadding: const EdgeInsets.all(8),
      ),
    ),
  );

  final tf2 = FadeInDown(
    duration: duration,
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.white,
        filled: true,
        enabled: true,
        hintText: "Password",
        contentPadding: const EdgeInsets.all(8),
      ),
    ),
  );

  final loginButton = FadeInDown(
    duration: duration,
    child: BlackButton(
      text: "LOGIN",
      onPressed: () {},
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
