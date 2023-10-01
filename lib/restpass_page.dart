import 'package:flutter/material.dart';

// ignore: camel_case_types
class Rest_Password extends StatelessWidget {
  const Rest_Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Center(
          child: Text('RestPassword'),
        ),
      ),
    );
  }
}
