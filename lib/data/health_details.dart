import 'package:fitness_dashboard_ui/models/health_model.dart';

class HealthDetails {
  final healthData = [
    HealthModel(
      icon: 'assets/icons/burn.png',
      value: '72 bpm',
      title: 'Heart Rate',
    ),
    HealthModel(icon: 'assets/icons/steps.png', value: '5,000', title: 'Steps'),

    HealthModel(
      icon: 'assets/icons/burn.png',
      value: '300 kcal',
      title: 'Distance',
    ),

    HealthModel(icon: 'assets/icons/burn.png', value: '7h48m', title: 'Sleep'),
  ];
}
