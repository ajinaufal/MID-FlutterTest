import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_entities.freezed.dart';

@freezed
class QuizEntities with _$QuizEntities {
  const factory QuizEntities({
    String? id,
    String? image,
    String? question,
    String? topic,
    String? selectedAnswer,
    List<QuizListAnswerEntities>? listAnswer,
  }) = _QuizEntities;
}

@freezed
class QuizListAnswerEntities with _$QuizListAnswerEntities {
  const factory QuizListAnswerEntities({
    String? id,
    bool? isAnswer,
    String? answer,
    bool? correct,
  }) = _QuizListAnswerEntities;
}
