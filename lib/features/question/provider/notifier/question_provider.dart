import 'package:flutter_riverpod/flutter_riverpod.dart';

final progressTime = AutoDisposeStateProvider<double>((ref) => 0.0);
