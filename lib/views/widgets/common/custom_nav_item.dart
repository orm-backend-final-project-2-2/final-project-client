import 'package:flutter/material.dart';

class CustomNavItemInfo {
  String label;
  IconData icon;

  CustomNavItemInfo({
    required this.label,
    required this.icon,
    
  });
}

class CustomNavItemList { // 필요한 경우 T를 여기서도 사용할 수 있습니다.
  List<CustomNavItemInfo> items = [
    CustomNavItemInfo(label: 'Home', icon: Icons.home),
    CustomNavItemInfo(label: 'Profile', icon: Icons.person),
    CustomNavItemInfo(label: 'Settings', icon: Icons.settings),
  ];
  VoidCallback? onTap;

  CustomNavItemList();
}
