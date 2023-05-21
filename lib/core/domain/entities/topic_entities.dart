import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_entities.freezed.dart';

@freezed
class TopicEntities with _$TopicEntities {
  const factory TopicEntities({
    String? topic,
    String? id,
  }) = _TopicEntities;
}
