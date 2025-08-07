import 'package:fitness_dashboard_ui/data/chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartData();

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sections: pieChartData.pieChartSelectionDatas,
              centerSpaceRadius: 70,
              sectionsSpace: 0,
              startDegreeOffset: -90,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('70%'),
                const SizedBox(height: 8),
                Text('of 100%'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
