import 'package:flutter/material.dart';

class CustomNavItemInfo {
  String label;
  IconData icon;

  CustomNavItemInfo({
    required this.label,
    required this.icon,
  });
}

List<CustomNavItemInfo> customNavItems = [
  CustomNavItemInfo(label: 'Home', icon: Icons.home),
  CustomNavItemInfo(label: 'Search', icon: Icons.search),
  CustomNavItemInfo(label: 'Favorite', icon: Icons.favorite),
  CustomNavItemInfo(label: 'Settings', icon: Icons.settings),
];