import 'package:flutter/material.dart';
import 'package:codefit/views/widgets/common/custom_nav_item.dart';

class WebGlobalNavigationBar extends StatelessWidget {
  WebGlobalNavigationBar({Key? key}) : super(key: key);

  final CustomNavItemList navItems = CustomNavItemList();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: double.infinity,
      child: const Center(
        child: Text('Global Navigation Bar'),
      ),
    );
  }
}