import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/account_data.dart';
import 'package:flutter_application_1/scanning.dart';
import 'package:flutter_application_1/sensor.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  double percentage = 0.9;
  List<Sensor> sensor = [
    Sensor(
        name: 'Ph sensor',
        description:
            'It is a miniature computer with standard credit card dimensions ',
        reading: 0),
    Sensor(
        name: 'Soil moisture sensor',
        description:
            'It is a device for monitoring moisture levels in the soil',
        reading: 0),
    Sensor(
        name: 'Soil temperature sensor',
        description:
            'They are devices used to measure the temperature of the soil or ground.',
        reading: 0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          title: const Text(
            'sensor',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Account(),
                  ));
                },
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Scanning()));
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            const Text(
              'Iot Monitoring',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CircularPercentIndicator(
              radius: 150.0, // قطر الدائرة
              lineWidth: 12.0, // عرض الخط الذي يحيط بالدائرة
              percent: percentage, // النسبة المئوية
              center: Text("${(percentage * 100).toStringAsFixed(1)}%",
                  style: const TextStyle(fontSize: 20.0)),
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                  itemBuilder: (context, indexe) {
                    return Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 12),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sensor : ${sensor[indexe].name}',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'description of Sensor : ${sensor[indexe].description}',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  'Sensor readers at the present time : ${sensor[indexe].reading}',
                                  style: const TextStyle(fontSize: 18),
                                ),
                              )
                            ]),
                      ),
                    );
                  },
                  separatorBuilder: (context, indexe) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: sensor.length),
            ))
          ],
        ));
  }
}
