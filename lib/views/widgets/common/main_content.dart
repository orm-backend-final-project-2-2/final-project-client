import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: Colors.white,
      child: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}