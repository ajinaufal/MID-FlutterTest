import 'package:dartz/dartz.dart';
import 'package:quiz/core/data/models/failures/failure.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';
import 'package:quiz/core/domain/entities/topic_entities.dart';

abstract class QuizRepository {
  Future<Either<Failure, List<QuizEntities>>> getRemoteQuiz(String? topic);
  Future<Either<Failure, List<TopicEntities>>> getRemoteTopic();
}
