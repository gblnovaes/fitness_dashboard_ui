import 'package:fitness_dashboard_ui/constants/constants.dart';
import 'package:fitness_dashboard_ui/data/line_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return Column(
      children: [
        Text(
          "Steps Overview",
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
        ),

        AspectRatio(
          aspectRatio: 16 / 3,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(handleBuiltInTouches: true),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),

                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 44,
                    interval: 1,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return data.bottomTitles[value.toInt()] != null
                          ? SideTitleWidget(
                              meta: meta,
                              child: Text(
                                data.bottomTitles[value.toInt()]!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[400],
                                ),
                              ),
                            )
                          : const SizedBox(height: 0, width: 0);
                    },
                  ),
                ),

                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                    reservedSize: 40,
                    interval: 20,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return Text(
                        value.toInt().toString(),
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                      );
                    },
                  ),
                ),
              ),

              borderData: FlBorderData(show: false),

              lineBarsData: [
                LineChartBarData(
                  color: selectionColor,

                  barWidth: 2.5,
                  belowBarData: BarAreaData(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        selectionColor.withValues(alpha: 0.3),
                        Colors.transparent,
                      ],
                    ),
                    show: true,
                  ),
                  dotData: FlDotData(show: true),

                  spots: data.spots,
                ),
              ],
              minX: 0,
              maxX: 120,
              minY: 105,
              maxY: -5,
            ),
          ),
        ),
      ],
    );
  }
}
