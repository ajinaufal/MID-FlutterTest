import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:quiz/core/data/datasource/remote/quiz_remote_data_source.dart';
import 'package:quiz/core/data/models/failures/failure.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';
import 'package:quiz/core/domain/entities/topic_entities.dart';
import 'package:quiz/core/domain/repositories/quiz_repository.dart';
import 'package:quiz/core/helper/network_helper.dart';

final quizRepositoryProvider = Provider.autoDispose<QuizRepository>(
  (ref) {
    ref.onDispose(() {});
    return QuizRepositoriesImpl(
      remoteDataSource: const QuizRemoteDataSourceImpl(),
      networkInfo: NetworkInfoImpl(
        dataConnectionChecker: InternetConnectionChecker(),
      ),
    );
  },
);

class QuizRepositoriesImpl implements QuizRepository {
  const QuizRepositoriesImpl({
    required this.networkInfo,
    required this.remoteDataSource,
  });

  final NetworkInfo networkInfo;
  final QuizRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, List<QuizEntities>>> getRemoteQuiz(
      String? topic) async {
    if (await networkInfo.isConnected) {
      try {
        final resp = await remoteDataSource.getRemoteQuiz(topic);
        return Right(resp);
      } on SocketException {
        return const Left(SocketFailure());
      } catch (_) {
        return const Left(ServerFailure());
      }
    }
    return const Left(NetworkFailure());
  }

  @override
  Future<Either<Failure, List<TopicEntities>>> getRemoteTopic() async {
    if (await networkInfo.isConnected) {
      try {
        final resp = await remoteDataSource.getRemoteTopic();
        return Right(resp);
      } on SocketException {
        return const Left(SocketFailure());
      } catch (_) {
        return const Left(ServerFailure());
      }
    }
    return const Left(NetworkFailure());
  }
}
