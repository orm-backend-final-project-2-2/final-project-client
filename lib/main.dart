import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:codefit/views/screens/main_screen.dart';

// part 'main.g.dart';

void main() {
  runApp(
    const ProviderScope(
      child: CodeFitApp()
    )
  );
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
