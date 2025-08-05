import 'package:flutter/widgets.dart';

class MenuModel {
  final String title;
  final IconData icon;

  MenuModel({required this.title, required this.icon});

  @override
  String toString() {
    return 'MenuModel(title: $title, iconPath: $icon)';
  }
}
