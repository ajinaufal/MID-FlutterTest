// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizModel _$$_QuizModelFromJson(Map<String, dynamic> json) => _$_QuizModel(
      image: json['image'] as String?,
      question: json['question'] as String?,
      topic: json['topic'] as String?,
      listAnswer: (json['list_answer'] as List<dynamic>?)
          ?.map((e) => QuizListAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuizModelToJson(_$_QuizModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'question': instance.question,
      'topic': instance.topic,
      'list_answer': instance.listAnswer,
    };

_$_QuizListAnswerModel _$$_QuizListAnswerModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuizListAnswerModel(
      id: json['id'] as String?,
      isAnswer: json['is_answer'] as bool?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_QuizListAnswerModelToJson(
        _$_QuizListAnswerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_answer': instance.isAnswer,
      'answer': instance.answer,
    };
