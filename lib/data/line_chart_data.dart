import 'package:fl_chart/fl_chart.dart';

class LineData {
  final spots = const [
    FlSpot(0.0, 37.0),
    FlSpot(10.0, 30.0),
    FlSpot(20.0, 34.0),
    FlSpot(30.0, 50.0),
    FlSpot(40.7, 35.0),
    FlSpot(50.3, 60.0),
    FlSpot(60.0, 40.0),
    FlSpot(70.0, 45.0),
    FlSpot(80.0, 42.0),
    FlSpot(90.0, 48.0),
    FlSpot(100.0, 50.0),
    FlSpot(110.0, 100.0),
    FlSpot(120.0, 60.0),
  ];

  final leftTitles = const {
    0: '0',
    10: '10k',
    20: '20k',
    30: '30k',
    40: '40k',
    50: '50k',
  };

  final bottomTitles = const {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };
}
