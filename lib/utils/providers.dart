import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:codefit/views/widgets/common/contents/home_content.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);

final currentContentProvider = StateProvider<Widget>((ref) => const HomeContent());