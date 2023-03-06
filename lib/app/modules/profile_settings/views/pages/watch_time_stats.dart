import 'package:flutter/material.dart';

import '../widgets/watch_time_chart.dart';

class WatchTime extends StatefulWidget {
  const WatchTime({super.key});

  @override
  State<WatchTime> createState() => _WatchTimeState();
}

class _WatchTimeState extends State<WatchTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            child: GestureDetector(
              onTap: () => setState(() {}),
              child: const Icon(
                Icons.refresh,
                size: 26.0,
              ),
            ),
          ),
        ],
        elevation: 0.0,
        title: const Text('Watch time stats'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const PiePage(),
          const SizedBox(
            height: 25,
          ),
          DetailedWatchTimeStats()
        ],
      ),
    );
  }
}

class DetailedWatchTimeStats extends StatelessWidget {
  DetailedWatchTimeStats({
    super.key,
  });
  final List<String> labels = [
    'Life style',
    'Career',
    'Self development',
    'Sports',
    'Gaming',
    'Travel',
  ];
  final List<MaterialColor> colors = [
    Colors.orange,
    Colors.pink,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.grey,
  ];
  final List<String> times = [
    '240 min',
    '150 min',
    '35 min',
    '28 min',
    '76 min',
    '48 min',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          labels.length,
          (index) => ListTile(
                leading: Icon(Icons.circle, color: colors[index]),
                title: Text(labels[index]),
                trailing: Text(times[index]),
              )),
    );
  }
}
