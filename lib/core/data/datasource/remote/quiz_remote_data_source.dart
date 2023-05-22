import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz/core/data/models/response/quiz_model.dart';
import 'package:quiz/core/data/models/response/topic_model.dart';
import 'package:quiz/core/domain/entities/quiz_entities.dart';
import 'package:quiz/core/domain/entities/topic_entities.dart';

abstract class QuizRemoteDataSource {
  Future<List<QuizEntities>> getRemoteQuiz(String? topic);
  Future<List<TopicEntities>> getRemoteTopic();
}

class QuizRemoteDataSourceImpl implements QuizRemoteDataSource {
  const QuizRemoteDataSourceImpl();

  @override
  Future<List<QuizEntities>> getRemoteQuiz(String? topic) async {
    final QuerySnapshot<QuizModel> resp;
    if (topic == null || topic == '') {
      resp = await FirebaseFirestore.instance
          .collection('quiz')
          .withConverter<QuizModel>(
            fromFirestore: (snapshot, _) =>
                QuizModel.fromJson(snapshot.data()!),
            toFirestore: (quiz, _) => quiz.toJson(),
          )
          .get();
    } else {
      resp = await FirebaseFirestore.instance
          .collection('quiz')
          .where('topic', isEqualTo: topic)
          .withConverter<QuizModel>(
            fromFirestore: (snapshot, _) =>
                QuizModel.fromJson(snapshot.data()!),
            toFirestore: (quiz, _) => quiz.toJson(),
          )
          .get();
    }

    final model = resp.docs.map((e) => e.data().toEntity(id: e.id)).toList();

    return model;
  }

  @override
  Future<List<TopicEntities>> getRemoteTopic() async {
    final resp = await FirebaseFirestore.instance
        .collection('topic')
        .withConverter<TopicModel>(
          fromFirestore: (snapshot, _) => TopicModel.fromJson(snapshot.data()!),
          toFirestore: (quiz, _) => quiz.toJson(),
        )
        .get();

    final model = resp.docs.map((e) => e.data().toEntity(id: e.id)).toList();

    return model;
  }
}
