import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bar Chart Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(show: false),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: const Color(0xff37434d), width: 1),
            ),
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                    toY: 2,
                    color: Colors.blue,
                  ),
                ],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(toY: 1, color: Colors.green),
                ],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(toY: 4, color: Colors.orange),
                ],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(toY: 2, color: Colors.red),
                ],
              ),
              BarChartGroupData(
                x: 4,
                barRods: [
                  BarChartRodData(toY: 5, color: Colors.purple),
                ],
              ),
              BarChartGroupData(
                x: 5,
                barRods: [
                  BarChartRodData(toY: 1, color: Colors.yellow),
                ],
              ),
              BarChartGroupData(
                x: 6,
                barRods: [
                  BarChartRodData(toY: 4, color: Colors.indigo),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
