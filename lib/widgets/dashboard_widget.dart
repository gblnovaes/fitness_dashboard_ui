import 'package:fitness_dashboard_ui/widgets/activity_details_card.dart';
import 'package:fitness_dashboard_ui/widgets/bar_graph_widget.dart';
import 'package:fitness_dashboard_ui/widgets/header_widget.dart';
import 'package:fitness_dashboard_ui/widgets/line_chart_card.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 18),
          HeaderWidget(),
          SizedBox(height: 18),
          BarGraphWidget(),
          SizedBox(height: 18),
          ActivityDetailsCard(),
          SizedBox(height: 18),
          LineChartCard(),
        ],
      ),
    );
  }
}
