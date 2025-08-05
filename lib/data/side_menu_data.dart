import 'package:fitness_dashboard_ui/models/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menuItems = [
    MenuModel(title: 'Home', icon: Icons.home),
    MenuModel(title: 'Profile', icon: Icons.person),
    MenuModel(title: 'Settings', icon: Icons.settings),
    MenuModel(title: 'Notifications', icon: Icons.notifications),
    MenuModel(title: 'Help', icon: Icons.help),
    MenuModel(title: 'Logout', icon: Icons.logout),
  ]; // List of menu items for the side menu
}
