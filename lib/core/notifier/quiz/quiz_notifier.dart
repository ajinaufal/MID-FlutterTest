import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz/core/data/repository_impl/quiz_respository_impl.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';
import 'package:quiz/core/domain/repositories/quiz_repository.dart';
import 'package:quiz/core/state/app_state.dart';

part 'quiz_provider.dart';

class QuizNotifier extends StateNotifier<AppStates<List<QuizEntities>>> {
  QuizNotifier({
    required this.repository,
  }) : super(const AppStates.loading());

  final QuizRepository repository;

  Future<void> getQuizDetail({String? id}) async {
    final resp = await repository.getRemoteQuiz(id);
    final updateState = resp.fold(
      (failure) => AppStates<List<QuizEntities>>.error(failure),
      (list) => AppStates<List<QuizEntities>>.success(list),
    );

    if (mounted) state = updateState;
  }

  Future<List<QuizEntities>> getSearchQuiz({String? id}) async {
    final resp = await repository.getRemoteQuiz(id);
    final updateState = resp.fold(
      (failure) => AppStates<List<QuizEntities>>.error(failure),
      (list) => AppStates<List<QuizEntities>>.success(list),
    );

    return updateState.whenOrNull(success: (data) => data) ?? [];
  }
}
