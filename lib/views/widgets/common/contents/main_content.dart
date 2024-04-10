import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:codefit/utils/providers.dart';

class MainContent extends ConsumerWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentContent = ref.watch(currentContentProvider);

    return SizedBox(
      width: 1200,
      height: 800,
      child: currentContent,
    );
  }
}
