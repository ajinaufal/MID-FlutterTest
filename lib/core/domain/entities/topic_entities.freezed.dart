// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopicEntities {
  String? get topic => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicEntitiesCopyWith<TopicEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicEntitiesCopyWith<$Res> {
  factory $TopicEntitiesCopyWith(
          TopicEntities value, $Res Function(TopicEntities) then) =
      _$TopicEntitiesCopyWithImpl<$Res, TopicEntities>;
  @useResult
  $Res call({String? topic, String? id});
}

/// @nodoc
class _$TopicEntitiesCopyWithImpl<$Res, $Val extends TopicEntities>
    implements $TopicEntitiesCopyWith<$Res> {
  _$TopicEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopicEntitiesCopyWith<$Res>
    implements $TopicEntitiesCopyWith<$Res> {
  factory _$$_TopicEntitiesCopyWith(
          _$_TopicEntities value, $Res Function(_$_TopicEntities) then) =
      __$$_TopicEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? topic, String? id});
}

/// @nodoc
class __$$_TopicEntitiesCopyWithImpl<$Res>
    extends _$TopicEntitiesCopyWithImpl<$Res, _$_TopicEntities>
    implements _$$_TopicEntitiesCopyWith<$Res> {
  __$$_TopicEntitiesCopyWithImpl(
      _$_TopicEntities _value, $Res Function(_$_TopicEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_TopicEntities(
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TopicEntities implements _TopicEntities {
  const _$_TopicEntities({this.topic, this.id});

  @override
  final String? topic;
  @override
  final String? id;

  @override
  String toString() {
    return 'TopicEntities(topic: $topic, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicEntities &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicEntitiesCopyWith<_$_TopicEntities> get copyWith =>
      __$$_TopicEntitiesCopyWithImpl<_$_TopicEntities>(this, _$identity);
}

abstract class _TopicEntities implements TopicEntities {
  const factory _TopicEntities({final String? topic, final String? id}) =
      _$_TopicEntities;

  @override
  String? get topic;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_TopicEntitiesCopyWith<_$_TopicEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
