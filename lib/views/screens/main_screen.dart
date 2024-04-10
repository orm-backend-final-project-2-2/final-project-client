import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:codefit/views/screens/android_main_screen.dart';
import 'package:codefit/views/screens/web_main_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: kIsWeb ? WebMainScreen() : AndroidMainScreen()
    );
  }
}
