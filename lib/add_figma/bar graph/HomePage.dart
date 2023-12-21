import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_figma/bar%20graph/bar_graph.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List<double> weeklySummary = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.10,
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          //child: MyBarGraph(),
        ),
      ),
    );
  }
}
