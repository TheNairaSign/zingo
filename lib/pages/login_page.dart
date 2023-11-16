import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zingo/animations/login_animations.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final loginAnimate = LoginPageAnimations();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 20,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: SvgPicture.asset(
                  "assets/svg/close.svg",
                  height: 30,
                ),
              ),
            ),
            Positioned(
              right: 10,
              child: loginAnimate.light1,
            ),
            Positioned(
              left: size / 2,
              child: loginAnimate.light2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      loginAnimate.loiginText,
                    ],
                  ),
                  const SizedBox(height: 180),
                  loginAnimate.tf1,
                  const SizedBox(height: 20),
                  loginAnimate.tf2,
                  const SizedBox(
                    height: 150,
                  ),
                  loginAnimate.loginButton,
                  const SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.grey),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Forgot your password?",
                      style: GoogleFonts.jost(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  loginAnimate.facebookButton,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
