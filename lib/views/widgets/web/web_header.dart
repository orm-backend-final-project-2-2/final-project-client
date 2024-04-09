import 'package:codefit/views/widgets/web/web_global_navigation_bar.dart';
import 'package:flutter/material.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 80,
      alignment: Alignment.center,
      child: const SizedBox(
        width: 1200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FlutterLogo(size: 40),
                SizedBox(width: 10),
                Text(
                  'CodeFit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(width: 10),
                WebGlobalNavigationBar(),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      )
    );
  }
}