import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:zingo/pages/start_page.dart';
import 'package:zingo/providers/appbar_key_provider.dart';
import 'package:zingo/providers/login_provider.dart';
import 'package:zingo/providers/sign_up_provider.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => SignUpProvider()),
        ChangeNotifierProvider(create: (context) => KeyProvider()),
      ],
      child: const Zingo(),
    ),
  );
}
const plusShadowColor = Colors.grey;
const minusShadowColor = Color.fromARGB(70, 247, 246, 246);

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
