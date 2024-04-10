import 'package:flutter/material.dart';

class WebHomeBanner extends StatelessWidget {
  const WebHomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ) {
    // currentIndex Provider의 값을 읽습니다.

    return Container(
      height: 400,
      color: Colors.white,
      child: const Center(
        child: Text(
          'CodeFit',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
