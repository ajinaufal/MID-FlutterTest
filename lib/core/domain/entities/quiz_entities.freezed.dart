// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizEntities {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  String? get selectedAnswer => throw _privateConstructorUsedError;
  List<QuizListAnswerEntities>? get listAnswer =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizEntitiesCopyWith<QuizEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizEntitiesCopyWith<$Res> {
  factory $QuizEntitiesCopyWith(
          QuizEntities value, $Res Function(QuizEntities) then) =
      _$QuizEntitiesCopyWithImpl<$Res, QuizEntities>;
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? question,
      String? topic,
      String? selectedAnswer,
      List<QuizListAnswerEntities>? listAnswer});
}

/// @nodoc
class _$QuizEntitiesCopyWithImpl<$Res, $Val extends QuizEntities>
    implements $QuizEntitiesCopyWith<$Res> {
  _$QuizEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? question = freezed,
    Object? topic = freezed,
    Object? selectedAnswer = freezed,
    Object? listAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      listAnswer: freezed == listAnswer
          ? _value.listAnswer
          : listAnswer // ignore: cast_nullable_to_non_nullable
              as List<QuizListAnswerEntities>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizEntitiesCopyWith<$Res>
    implements $QuizEntitiesCopyWith<$Res> {
  factory _$$_QuizEntitiesCopyWith(
          _$_QuizEntities value, $Res Function(_$_QuizEntities) then) =
      __$$_QuizEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? question,
      String? topic,
      String? selectedAnswer,
      List<QuizListAnswerEntities>? listAnswer});
}

/// @nodoc
class __$$_QuizEntitiesCopyWithImpl<$Res>
    extends _$QuizEntitiesCopyWithImpl<$Res, _$_QuizEntities>
    implements _$$_QuizEntitiesCopyWith<$Res> {
  __$$_QuizEntitiesCopyWithImpl(
      _$_QuizEntities _value, $Res Function(_$_QuizEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? question = freezed,
    Object? topic = freezed,
    Object? selectedAnswer = freezed,
    Object? listAnswer = freezed,
  }) {
    return _then(_$_QuizEntities(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      listAnswer: freezed == listAnswer
          ? _value._listAnswer
          : listAnswer // ignore: cast_nullable_to_non_nullable
              as List<QuizListAnswerEntities>?,
    ));
  }
}

/// @nodoc

class _$_QuizEntities implements _QuizEntities {
  const _$_QuizEntities(
      {this.id,
      this.image,
      this.question,
      this.topic,
      this.selectedAnswer,
      final List<QuizListAnswerEntities>? listAnswer})
      : _listAnswer = listAnswer;

  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? question;
  @override
  final String? topic;
  @override
  final String? selectedAnswer;
  final List<QuizListAnswerEntities>? _listAnswer;
  @override
  List<QuizListAnswerEntities>? get listAnswer {
    final value = _listAnswer;
    if (value == null) return null;
    if (_listAnswer is EqualUnmodifiableListView) return _listAnswer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizEntities(id: $id, image: $image, question: $question, topic: $topic, selectedAnswer: $selectedAnswer, listAnswer: $listAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer) &&
            const DeepCollectionEquality()
                .equals(other._listAnswer, _listAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, image, question, topic,
      selectedAnswer, const DeepCollectionEquality().hash(_listAnswer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizEntitiesCopyWith<_$_QuizEntities> get copyWith =>
      __$$_QuizEntitiesCopyWithImpl<_$_QuizEntities>(this, _$identity);
}

abstract class _QuizEntities implements QuizEntities {
  const factory _QuizEntities(
      {final String? id,
      final String? image,
      final String? question,
      final String? topic,
      final String? selectedAnswer,
      final List<QuizListAnswerEntities>? listAnswer}) = _$_QuizEntities;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get question;
  @override
  String? get topic;
  @override
  String? get selectedAnswer;
  @override
  List<QuizListAnswerEntities>? get listAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuizEntitiesCopyWith<_$_QuizEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizListAnswerEntities {
  String? get id => throw _privateConstructorUsedError;
  bool? get isAnswer => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  bool? get correct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizListAnswerEntitiesCopyWith<QuizListAnswerEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizListAnswerEntitiesCopyWith<$Res> {
  factory $QuizListAnswerEntitiesCopyWith(QuizListAnswerEntities value,
          $Res Function(QuizListAnswerEntities) then) =
      _$QuizListAnswerEntitiesCopyWithImpl<$Res, QuizListAnswerEntities>;
  @useResult
  $Res call({String? id, bool? isAnswer, String? answer, bool? correct});
}

/// @nodoc
class _$QuizListAnswerEntitiesCopyWithImpl<$Res,
        $Val extends QuizListAnswerEntities>
    implements $QuizListAnswerEntitiesCopyWith<$Res> {
  _$QuizListAnswerEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isAnswer = freezed,
    Object? answer = freezed,
    Object? correct = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnswer: freezed == isAnswer
          ? _value.isAnswer
          : isAnswer // ignore: cast_nullable_to_non_nullable
              as bool?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizListAnswerEntitiesCopyWith<$Res>
    implements $QuizListAnswerEntitiesCopyWith<$Res> {
  factory _$$_QuizListAnswerEntitiesCopyWith(_$_QuizListAnswerEntities value,
          $Res Function(_$_QuizListAnswerEntities) then) =
      __$$_QuizListAnswerEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, bool? isAnswer, String? answer, bool? correct});
}

/// @nodoc
class __$$_QuizListAnswerEntitiesCopyWithImpl<$Res>
    extends _$QuizListAnswerEntitiesCopyWithImpl<$Res,
        _$_QuizListAnswerEntities>
    implements _$$_QuizListAnswerEntitiesCopyWith<$Res> {
  __$$_QuizListAnswerEntitiesCopyWithImpl(_$_QuizListAnswerEntities _value,
      $Res Function(_$_QuizListAnswerEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isAnswer = freezed,
    Object? answer = freezed,
    Object? correct = freezed,
  }) {
    return _then(_$_QuizListAnswerEntities(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnswer: freezed == isAnswer
          ? _value.isAnswer
          : isAnswer // ignore: cast_nullable_to_non_nullable
              as bool?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      correct: freezed == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_QuizListAnswerEntities implements _QuizListAnswerEntities {
  const _$_QuizListAnswerEntities(
      {this.id, this.isAnswer, this.answer, this.correct});

  @override
  final String? id;
  @override
  final bool? isAnswer;
  @override
  final String? answer;
  @override
  final bool? correct;

  @override
  String toString() {
    return 'QuizListAnswerEntities(id: $id, isAnswer: $isAnswer, answer: $answer, correct: $correct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizListAnswerEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isAnswer, isAnswer) ||
                other.isAnswer == isAnswer) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.correct, correct) || other.correct == correct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isAnswer, answer, correct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizListAnswerEntitiesCopyWith<_$_QuizListAnswerEntities> get copyWith =>
      __$$_QuizListAnswerEntitiesCopyWithImpl<_$_QuizListAnswerEntities>(
          this, _$identity);
}

abstract class _QuizListAnswerEntities implements QuizListAnswerEntities {
  const factory _QuizListAnswerEntities(
      {final String? id,
      final bool? isAnswer,
      final String? answer,
      final bool? correct}) = _$_QuizListAnswerEntities;

  @override
  String? get id;
  @override
  bool? get isAnswer;
  @override
  String? get answer;
  @override
  bool? get correct;
  @override
  @JsonKey(ignore: true)
  _$$_QuizListAnswerEntitiesCopyWith<_$_QuizListAnswerEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
