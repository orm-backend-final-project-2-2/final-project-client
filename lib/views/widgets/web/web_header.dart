import 'package:codefit/views/widgets/web/web_global_navigation_bar.dart';
import 'package:flutter/material.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        height: 70,
        alignment: Alignment.center,
        child: SizedBox(
          width: 1200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      print('CodeFit');
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.code,
                          color: Colors.white,
                        ),
                        Text(
                          'CodeFit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    )
                  ),
                  const SizedBox(width: 20),
                  WebGlobalNavigationBar(
                    items: [
                      WebGlobalNavigationBarItem(label: 'Home'),
                      WebGlobalNavigationBarItem(label: 'Profile'),
                      WebGlobalNavigationBarItem(label: 'Settings'),
                    ],
                    currentIndex: 0,
                    onTap: (int index) {
                      switch (index) {
                        case 0:
                          print('Home');
                          break;
                        case 1:
                          print('Profile');
                          break;
                        case 2:
                          print('Settings');
                          break;
                      }
                    },
                  ),
                ],
              ),
              Container(
                    width: 100,
                    color: Colors.white,
                  )
            ]
          ),
        ));
  }
}
