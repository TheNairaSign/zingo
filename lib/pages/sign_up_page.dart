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
    return Scaffold(
      body: Consumer<SignUpProvider>(builder: (context, signUpProvider, value) {
        return SingleChildScrollView(
          child: Stack(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Personal details",
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    CustomTextField(
                      hintText: "Email",
                      controller: signUpProvider.email,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      hintText: "Password",
                      controller: signUpProvider.password,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      hintText: "Phone",
                      controller: signUpProvider.phone,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      hintText: "Date of birth",
                      controller: signUpProvider.dateOfBirth,
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      hintText: "Address",
                      controller: signUpProvider.address,
                    ),
                    const SizedBox(height: 50),
                    BlackButton(text: "SIGN UP", onPressed: () {}),
                    const SizedBox(height: 50),
                    Row(
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
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: ((context) => LoginPage()))),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
