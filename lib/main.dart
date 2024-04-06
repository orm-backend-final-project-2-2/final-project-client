import 'package:flutter/material.dart';
import 'package:codefit/views/main_screen.dart';

void main() {
  runApp(const CodeFitApp());
}

class CodeFitApp extends StatelessWidget {
  const CodeFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}
