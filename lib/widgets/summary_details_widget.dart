import 'package:fitness_dashboard_ui/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class SummaryDetailsWidget extends StatelessWidget {
  const SummaryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails('Calories', '350'),
          buildDetails('Steps', '5,000'),
          buildDetails('Distance', '3 km'),
          buildDetails('Active Time', '1hr'),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(key, style: TextStyle(fontSize: 11.0, color: Colors.grey)),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
