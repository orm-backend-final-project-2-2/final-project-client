import 'package:flutter/material.dart';
import 'package:codefit/views/widgets/web/web_header.dart';
import 'package:codefit/views/widgets/web/web_footer.dart';
import 'package:codefit/views/widgets/common/contents/main_content.dart';

class WebMainScreen extends StatelessWidget {
  const WebMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          WebHeader(),
          MainContent(),
          WebFooter(),
        ],
      ),
    );
  }
}
