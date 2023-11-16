import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get email => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get password => _passwordController;
}