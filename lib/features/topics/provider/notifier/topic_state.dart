part of 'topic_notifier.dart';

final topicNotifierProvider =
    StateNotifierProvider<TopicNotifier, AppStates<List<TopicEntities>>>(
  (Ref ref) {
    final repoQuiz = ref.read(quizRepositoryProvider);
    return TopicNotifier(repository: repoQuiz);
  },
);
