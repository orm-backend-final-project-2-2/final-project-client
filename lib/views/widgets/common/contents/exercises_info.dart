import 'package:flutter/material.dart';

class ExercisesInfoContent extends StatelessWidget {
  const ExercisesInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Text(
          'Exercises Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}