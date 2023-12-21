import 'package:flutter/material.dart';

class SoundIndicatorScreen extends StatefulWidget {
  @override
  _SoundIndicatorScreenState createState() => _SoundIndicatorScreenState();
}

class _SoundIndicatorScreenState extends State<SoundIndicatorScreen> {
  double _soundLevel = 0.0;
  double _minValue = 0;
  double _maxValue = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text('Sound Indicator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${_soundLevel.toStringAsFixed(2)} cm'),
                Text('$_maxValue cm'),
              ],
            ),
          ),
          SizedBox(height: 20),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.teal[400],
              inactiveTrackColor: Colors.grey,
              thumbColor: Colors.teal[400],
              overlayColor: Colors.blue.withOpacity(0.3),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
              tickMarkShape: RoundSliderTickMarkShape(),
              showValueIndicator: ShowValueIndicator.always,
            ),
            child: Slider(
              value: _soundLevel,
              min: _minValue,
              max: _maxValue,
              onChanged: (newValue) {
                setState(() {
                  _soundLevel = newValue;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
