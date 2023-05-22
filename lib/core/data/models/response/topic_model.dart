import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/core/domain/entities/topic_entities.dart';

part 'topic_model.freezed.dart';
part 'topic_model.g.dart';

@freezed
class TopicModel with _$TopicModel {
  const factory TopicModel({
    String? topic,
  }) = _TopicModel;

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);
}

extension TopicModelX on TopicModel {
  TopicEntities toEntity({String? id}) {
    return TopicEntities(
      topic: topic,
      id: id,
    );
  }
}
