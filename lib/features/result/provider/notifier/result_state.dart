part of 'result_notifier.dart';

// final resultNotifier = StateNotifierProvider<ResultNotifier, void>(
//   (Ref ref) {
//     final correctAnswers = ref.watch(correctAnswer.notifier);
//     return ResultNotifier(
//       indexAnswer: correctAnswers,
//     );
//   },
// );

final correctAnswer = StateProvider.autoDispose<int>((ref) => 0);
