import 'package:flutter/material.dart';
import 'package:codefit/views/widgets/web/web_home_banner.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WebHomeBanner(),
        ],
      ),
    );
  }
}