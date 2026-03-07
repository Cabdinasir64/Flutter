import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 0);

final titleProvider = Provider<String>((ref) => "Riverpod Lesson 13");