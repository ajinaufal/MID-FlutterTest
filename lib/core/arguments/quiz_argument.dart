import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';

part 'quiz_argument.freezed.dart';

@freezed
class QuizArgument with _$QuizArgument {
  const factory QuizArgument({
    String? id,
    int? index,
    required List<QuizEntities> listQuestion,
  }) = _QuizArgument;
}
