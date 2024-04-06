import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: kIsWeb ? WebMainScreen() : AndroidMainScreen(),
    );
  }
}

class WebMainScreen extends StatelessWidget {
  const WebMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello, Web!'),
      ),
    );
  }
}

class AndroidMainScreen extends StatelessWidget {
  const AndroidMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello, Android!'),
      ),
    );
  }
}