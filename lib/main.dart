import 'package:flutter/material.dart';
import 'package:signal_app/login_page.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Vazir'),
        debugShowCheckedModeBanner: false,
        home: const LoginPage());
  }
}

