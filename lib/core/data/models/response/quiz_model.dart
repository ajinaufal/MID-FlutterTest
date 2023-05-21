import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  const factory QuizModel({
    String? image,
    String? question,
    String? topic,
    @JsonKey(name: 'list_answer') List<QuizListAnswerModel>? listAnswer,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}

extension QuizModelX on QuizModel {
  QuizEntities toEntity() {
    return QuizEntities(
      image: image,
      question: question,
      topic: topic,
      listAnswer: listAnswer?.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
class QuizListAnswerModel with _$QuizListAnswerModel {
  const factory QuizListAnswerModel({
    String? id,
    @JsonKey(name: 'is_answer') bool? isAnswer,
    String? answer,
  }) = _QuizListAnswerModel;

  factory QuizListAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$QuizListAnswerModelFromJson(json);
}

extension QuizListAnswerModelX on QuizListAnswerModel {
  QuizListAnswerEntities toEntity() {
    return QuizListAnswerEntities(
      id: id,
      isAnswer: isAnswer,
      answer: answer,
    );
  }
}
