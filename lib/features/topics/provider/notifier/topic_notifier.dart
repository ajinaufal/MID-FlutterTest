import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz/core/data/repository_impl/quiz_respository_impl.dart';
import 'package:quiz/core/domain/entities/topic_entities.dart';
import 'package:quiz/core/domain/repositories/quiz_repository.dart';
import 'package:quiz/core/state/app_state.dart';

part 'topic_state.dart';

class TopicNotifier extends StateNotifier<AppStates<List<TopicEntities>>> {
  TopicNotifier({
    required this.repository,
  }) : super(const AppStates.loading());

  final QuizRepository repository;

  Future<void> getTopicDetail() async {
    final resp = await repository.getRemoteTopic();
    final updateState = resp.fold(
      (failure) => AppStates<List<TopicEntities>>.error(failure),
      (list) => AppStates<List<TopicEntities>>.success(list),
    );

    if (mounted) state = updateState;
  }
}
