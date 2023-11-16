import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get email => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get password => _passwordController;

  final TextEditingController _phoneController = TextEditingController();
  TextEditingController get phone => _phoneController;

  final TextEditingController _dateOfBirthController = TextEditingController();
  TextEditingController get dateOfBirth => _dateOfBirthController;

  final TextEditingController _addressController = TextEditingController();
  TextEditingController get address => _addressController;
}