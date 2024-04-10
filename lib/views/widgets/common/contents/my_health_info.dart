import 'package:flutter/material.dart';

class MyHealthInfoContent extends StatelessWidget {
  const MyHealthInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Text(
          'My Health Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}