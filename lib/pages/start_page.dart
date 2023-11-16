import 'package:flutter/material.dart';
import 'package:zingo/constants/images.dart';
import 'package:zingo/pages/login_page.dart';
import 'package:zingo/pages/sign_up_page.dart';
import 'package:zingo/widgets/black_button.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});

  final NetworkImages netImages = NetworkImages();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(netImages.whiteLamp),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 300,
                  child: BlackButton(
                    text: "Sign Up",
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage())),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: BlackButton(
                    color: Colors.white,
                    fontColor: Colors.black,
                    text: "Login",
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage())),
                  ),
                ),
                const SizedBox(height: 100),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
