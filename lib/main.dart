import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_figma/Home.dart';
import 'package:flutter_application_1/login_view.dart';
import 'package:flutter_application_1/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginViem(),
    );
  }
}
