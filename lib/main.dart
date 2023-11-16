import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zingo/pages/start_page.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const Zingo());
}
class Zingo extends StatelessWidget {
  const Zingo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}