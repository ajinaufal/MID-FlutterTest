part of 'quiz_notifier.dart';

final quizNotifierProvider =
    StateNotifierProvider<QuizNotifier, AppStates<List<QuizEntities>>>(
  (Ref ref) {
    final repoQuiz = ref.read(quizRepositoryProvider);
    return QuizNotifier(repository: repoQuiz);
  },
);
