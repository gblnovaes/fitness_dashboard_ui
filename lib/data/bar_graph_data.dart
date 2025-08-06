import 'package:fitness_dashboard_ui/models/bar_graph_model.dart';
import 'package:fitness_dashboard_ui/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphData {
  final data = [
    const BarGraphModel(
      label: 'Activity Level',
      color: Color.fromARGB(255, 95, 30, 116),
      graph: [
        GraphModel(x: 1, y: 30),
        GraphModel(x: 2, y: 50),
        GraphModel(x: 3, y: 35),
        GraphModel(x: 4, y: 30),
        GraphModel(x: 5, y: 40),
        GraphModel(x: 6, y: 50),
      ],
    ),

    const BarGraphModel(
      label: 'Nutrition',
      color: Color(0xFF4CAF50),
      graph: [
        GraphModel(x: 1, y: 30),
        GraphModel(x: 2, y: 50),
        GraphModel(x: 3, y: 70),
        GraphModel(x: 4, y: 60),
        GraphModel(x: 5, y: 40),
      ],
    ),

    const BarGraphModel(
      label: 'Hidration Level',
      color: Color(0xFF4CAF50),
      graph: [
        GraphModel(x: 1, y: 30),
        GraphModel(x: 2, y: 50),
        GraphModel(x: 3, y: 60),
        GraphModel(x: 4, y: 60),
        GraphModel(x: 5, y: 40),
      ],
    ),
  ];
}
