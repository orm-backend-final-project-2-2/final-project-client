import 'package:codefit/views/widgets/common/contents/account_content.dart';
import 'package:codefit/views/widgets/common/contents/community_content.dart';
import 'package:codefit/views/widgets/common/contents/exercises_info.dart';
import 'package:codefit/views/widgets/common/contents/home_content.dart';
import 'package:codefit/views/widgets/common/contents/my_health_info.dart';
import 'package:codefit/views/widgets/web/web_global_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:codefit/utils/providers.dart';

class WebHeader extends ConsumerWidget {
  const WebHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final currentIndex = ref.watch(currentIndexProvider);

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
                      ref.read(currentContentProvider.notifier).state = const HomeContent();
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
                      WebGlobalNavigationBarItem(label: '내 건강정보'),
                      WebGlobalNavigationBarItem(label: '운동정보'),
                      WebGlobalNavigationBarItem(label: '커뮤니티'),
                      WebGlobalNavigationBarItem(label: '마이페이지'),
                    ],
                    currentIndex: currentIndex,
                    onTap: (int index) {
                      ref.read(currentIndexProvider.notifier).state = index;
                      switch (index) {
                        case 0:
                          ref.read(currentContentProvider.notifier).state = const MyHealthInfoContent();
                          break;
                        case 1:
                          ref.read(currentContentProvider.notifier).state = const ExercisesInfoContent();
                          break;
                        case 2:
                          ref.read(currentContentProvider.notifier).state = const CommunityContent();
                          break;
                        case 3:
                          ref.read(currentContentProvider.notifier).state = const AccountContent(); 
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
