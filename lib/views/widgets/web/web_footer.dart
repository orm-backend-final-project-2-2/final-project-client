import 'package:flutter/material.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 100,
      child: const Center(
        child: Text(
          'CodeFit',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}