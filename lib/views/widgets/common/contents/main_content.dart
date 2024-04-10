import 'package:codefit/views/widgets/common/contents/home_content.dart';
import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const SizedBox(
      width: 1200,
      height: 800,
      child: HomeContent(),
    );
  }
}
