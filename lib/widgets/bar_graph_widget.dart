import 'package:fitness_dashboard_ui/data/bar_graph_data.dart';
import 'package:fitness_dashboard_ui/models/graph_model.dart';
import 'package:fitness_dashboard_ui/widgets/custom_card_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphWidget extends StatelessWidget {
  const BarGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();

    return AspectRatio(
      aspectRatio: 16 / 3,
      child: GridView.builder(
        itemCount: barGraphData.data.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 120,
          childAspectRatio: 5 / 4,
        ),
        itemBuilder: (context, index) {
          return CustomCardWidget(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    barGraphData.data[index].label,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      barGroups: _charGroups(
                        points: barGraphData.data[index].graph,
                        color: barGraphData.data[index].color,
                      ),
                      borderData: FlBorderData(border: const Border()),
                      gridData: FlGridData(show: false),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
                            reservedSize: 20,
                            getTitlesWidget: (value, meta) {
                              return Padding(
                                padding: EdgeInsetsGeometry.only(top: 5),
                                child: Text(
                                  barGraphData
                                      .data[index]
                                      .graph[value.toInt()]
                                      .x
                                      .toInt()
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        show: true,
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      barTouchData: BarTouchData(
                        enabled: true,
                        touchTooltipData: BarTouchTooltipData(
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {
                            return BarTooltipItem(
                              rod.toY.round().toString(),
                              const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<BarChartGroupData> _charGroups({
  required List<GraphModel> points,
  required Color color,
}) {
  return points
      .map(
        (point) => BarChartGroupData(
          x: point.x.toInt(),
          barRods: [
            BarChartRodData(
              toY: point.y,
              // ignore: deprecated_member_use
              color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(3.0),
                topRight: Radius.circular(3.0),
              ),
              width: 12,
            ),
          ],
        ),
      )
      .toList();
}
