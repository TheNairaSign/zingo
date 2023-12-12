import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart'; 
import 'package:zingo/animations/login_animations.dart';
import 'package:zingo/pages/home_page.dart';
import 'package:zingo/pages/sign_up_page.dart';
import 'package:zingo/providers/login_provider.dart';
import 'package:zingo/widgets/black_button.dart';
import 'package:zingo/widgets/custom_textField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final loginAnimate = LoginPageAnimations();

  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration(milliseconds: 1500);
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: _bodyStack(size, duration, context),
      ),
    );
  }

  Stack _bodyStack(double size, Duration duration, BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 30,
          left: 20,
          height: 30,
          child: CloseButton(),
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
          child: _columnInStack(duration, context),
        ),
      ],
    );
  }

  Column _columnInStack(Duration duration, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            loginAnimate.loiginText,
          ],
        ),
        const SizedBox(height: 180),
        _emailTextField(duration, context),
        const SizedBox(height: 20),
        _passwordTextField(duration, context),
        const SizedBox(
          height: 150,
        ),
        _loginButton(duration, context),
        const SizedBox(
          height: 50,
        ),
        _forgotPassword(context),
        loginAnimate.facebookButton,
        const SizedBox(height: 20),
        FadeInUp(
          duration: duration,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: GoogleFonts.jost(fontSize: 18),
              ),
              _signUpButton(context),
            ],
          ),
        )
      ],
    );
  }

  FadeInDown _loginButton(Duration duration, BuildContext context) {
    return FadeInDown(
      duration: duration,
      child: BlackButton(
        text: "LOGIN",
        onPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        ),
      ),
    );
  }

  TextButton _forgotPassword(BuildContext context) {
    return TextButton(
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
    );
  }

  FadeInDown _passwordTextField(Duration duration, BuildContext context) {
    final _ = context.read<LoginProvider>();
    return FadeInDown(
      duration: duration,
      child: CustomTextField(
        controller: _.password,
        hintText: "Password",
        obScureText: true,
      ),
    );
  }

  FadeInDown _emailTextField(Duration duration, BuildContext context) {
    final _ = context.read<LoginProvider>();
    return FadeInDown(
      duration: duration,
      child: CustomTextField(
        hintText: "Email",
        controller: _.email,
      ),
    );
  }

  TextButton _signUpButton(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        overlayColor: MaterialStatePropertyAll(Colors.grey),
      ),
      onPressed: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        ),
      ),
      child: Text(
        "Sign up",
        style: GoogleFonts.jost(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
