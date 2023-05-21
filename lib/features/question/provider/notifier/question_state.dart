part of 'question_notifier.dart';

// final questionNotifier = StateNotifierProvider<QuestionNotifier, QuestionState>(
//   (Ref ref) {
//     return QuestionNotifier();
//   },
// );

final progressTime = AutoDisposeStateProvider<double>((ref) => 0.0);
