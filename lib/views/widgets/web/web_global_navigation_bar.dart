import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WebGlobalNavigationBar extends ConsumerWidget {
  final List<WebGlobalNavigationBarItem> items;
  final int currentIndex;
  final Function(int) onTap;
  final Color selectedItemColor; // 추가된 속성

  const WebGlobalNavigationBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    this.selectedItemColor = Colors.white, // 기본값 설정
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;

        return InkWell(
          onTap: () => onTap(index), // onTap 콜백 정의
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              item.label,
              style: TextStyle(
                color: index == currentIndex ? selectedItemColor : Colors.black,
                fontWeight: index == currentIndex ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class WebGlobalNavigationBarItem {
  String label;

  WebGlobalNavigationBarItem({
    required this.label,
  });
}
