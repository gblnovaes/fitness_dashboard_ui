import 'package:fitness_dashboard_ui/widgets/dashboard_widget.dart';
import 'package:fitness_dashboard_ui/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard UI')),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 2, child: SizedBox(child: SideMenuWidget())),
            Expanded(flex: 7, child: SizedBox(child: DashboardWidget())),
            Expanded(flex: 3, child: Container(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
