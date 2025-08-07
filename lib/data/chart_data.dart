import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData {
  final pieChartSelectionDatas = [
    PieChartSectionData(
      showTitle: false,
      value: 30,
      radius: 22,
      color: const Color.fromARGB(255, 39, 105, 204),
    ),

    PieChartSectionData(
      showTitle: false,
      value: 40,
      radius: 18,
      color: const Color(0xFFFF9800),
    ),
    PieChartSectionData(
      showTitle: false,
      value: 15,
      radius: 14,
      color: const Color(0xFF2196F3),
    ),
    PieChartSectionData(
      showTitle: false,
      value: 15,
      radius: 10,
      color: const Color(0xFFE91E63),
    ),
  ];
}
