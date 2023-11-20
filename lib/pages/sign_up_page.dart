import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:zingo/pages/login_page.dart';
import 'package:zingo/providers/sign_up_provider.dart';
import 'package:zingo/widgets/black_button.dart';
import 'package:zingo/widgets/custom_textField.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 1500);

    return Scaffold(
      body: Consumer<SignUpProvider>(builder: (context, signUpProvider, value) {
        return SingleChildScrollView(
          child: _bodyStack(duration, signUpProvider, context),
        );
      }),
    );
  }

  Stack _bodyStack(
      Duration duration, SignUpProvider signUpProvider, BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 30,
          left: 20,
          height: 30,
          child: CloseButton(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: Text(
                  "Personal details",
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              _emailTextField(duration, signUpProvider),
              const SizedBox(height: 20),
              _passwordTextField(duration, signUpProvider),
              const SizedBox(height: 20),
              _phoneTextField(duration, signUpProvider),
              const SizedBox(height: 20),
              _dobTextField(duration, signUpProvider),
              const SizedBox(height: 20),
              _addressTextField(duration, signUpProvider),
              const SizedBox(height: 50),
              _signUpButton(duration),
              const SizedBox(height: 50),
              _userAlready(context),
            ],
          ),
        ),
      ],
    );
  }

  Row _userAlready(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: GoogleFonts.jost(fontSize: 18),
        ),
        TextButton(
          style: const ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.grey),
          ),
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: ((context) => LoginPage()),
            ),
          ),
          child: Text(
            "Login",
            style: GoogleFonts.jost(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  BounceInDown _signUpButton(Duration duration) {
    return BounceInDown(
      from: 300,
      duration: duration,
      child: BlackButton(
        text: "SIGN UP",
        onPressed: () {},
      ),
    );
  }

  BounceInDown _dobTextField(Duration duration, SignUpProvider signUpProvider) {
    return BounceInDown(
      from: 200,
      duration: duration,
      child: CustomTextField(
        hintText: "Date of birth",
        controller: signUpProvider.dateOfBirth,
      ),
    );
  }

  BounceInDown _addressTextField(
      Duration duration, SignUpProvider signUpProvider) {
    return BounceInDown(
      from: 250,
      duration: duration,
      child: CustomTextField(
        hintText: "Address",
        controller: signUpProvider.address,
      ),
    );
  }

  BounceInDown _phoneTextField(
      Duration duration, SignUpProvider signUpProvider) {
    return BounceInDown(
      from: 150,
      duration: duration,
      child: CustomTextField(
        hintText: "Phone",
        controller: signUpProvider.phone,
      ),
    );
  }

  BounceInDown _passwordTextField(
      Duration duration, SignUpProvider signUpProvider) {
    return BounceInDown(
      from: 100,
      duration: duration,
      child: CustomTextField(
        hintText: "Password",
        controller: signUpProvider.password,
      ),
    );
  }

  BounceInDown _emailTextField(
      Duration duration, SignUpProvider signUpProvider) {
    return BounceInDown(
      from: 50,
      duration: duration,
      child: CustomTextField(
        hintText: "Email",
        controller: signUpProvider.email,
      ),
    );
  }
}
