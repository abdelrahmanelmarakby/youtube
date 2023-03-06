import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mrx_charts/mrx_charts.dart';

class PiePage extends StatefulWidget {
  const PiePage({Key? key}) : super(key: key);

  @override
  State<PiePage> createState() => _PiePageState();
}

class _PiePageState extends State<PiePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 400.0,
          maxWidth: 400.0,
        ),
        padding: const EdgeInsets.all(24.0),
        child: Chart(
          layers: layers(),
        ),
      ),
    );
  }

  List<ChartLayer> layers() {
    return [
      ChartGroupPieLayer(
        items: List.generate(
          5,
          (index) => List.generate(
            Random().nextInt(4) + 2,
            (index) => ChartGroupPieDataItem(
                amount: Random().nextInt(300) * Random().nextDouble(),
                color: [
                  Colors.orange,
                  Colors.pink,
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.grey,
                ][Random().nextInt(6)],
                label: [
                  'Life style',
                  'Career',
                  'Self development',
                  'Sports',
                  'Gaming',
                  'Travel',
                ][Random().nextInt(6)]),
          ),
        ),
        settings: const ChartGroupPieSettings(),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipPieShape<ChartGroupPieDataItem>(
          onTextName: (item) => item.label,
          onTextValue: (item) => '${item.amount.ceil().toString()} min',
          radius: 10.0,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(12.0),
          nameTextStyle: TextStyle(
            color: Colors.green.shade600,
            fontWeight: FontWeight.w700,
            height: 1.47,
            fontSize: 12.0,
          ),
          valueTextStyle: const TextStyle(
            color: Color(0xFF1B0E41),
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
          ),
        ),
      )
    ];
  }
}
