// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) {
  return _QuizModel.fromJson(json);
}

/// @nodoc
mixin _$QuizModel {
  String? get image => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_answer')
  List<QuizListAnswerModel>? get listAnswer =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizModelCopyWith<QuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModelCopyWith<$Res> {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) then) =
      _$QuizModelCopyWithImpl<$Res, QuizModel>;
  @useResult
  $Res call(
      {String? image,
      String? question,
      String? topic,
      @JsonKey(name: 'list_answer') List<QuizListAnswerModel>? listAnswer});
}

/// @nodoc
class _$QuizModelCopyWithImpl<$Res, $Val extends QuizModel>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? question = freezed,
    Object? topic = freezed,
    Object? listAnswer = freezed,
  }) {
    return _then(_value.copyWith(
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
      listAnswer: freezed == listAnswer
          ? _value.listAnswer
          : listAnswer // ignore: cast_nullable_to_non_nullable
              as List<QuizListAnswerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizModelCopyWith<$Res> implements $QuizModelCopyWith<$Res> {
  factory _$$_QuizModelCopyWith(
          _$_QuizModel value, $Res Function(_$_QuizModel) then) =
      __$$_QuizModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? image,
      String? question,
      String? topic,
      @JsonKey(name: 'list_answer') List<QuizListAnswerModel>? listAnswer});
}

/// @nodoc
class __$$_QuizModelCopyWithImpl<$Res>
    extends _$QuizModelCopyWithImpl<$Res, _$_QuizModel>
    implements _$$_QuizModelCopyWith<$Res> {
  __$$_QuizModelCopyWithImpl(
      _$_QuizModel _value, $Res Function(_$_QuizModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? question = freezed,
    Object? topic = freezed,
    Object? listAnswer = freezed,
  }) {
    return _then(_$_QuizModel(
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
      listAnswer: freezed == listAnswer
          ? _value._listAnswer
          : listAnswer // ignore: cast_nullable_to_non_nullable
              as List<QuizListAnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizModel implements _QuizModel {
  const _$_QuizModel(
      {this.image,
      this.question,
      this.topic,
      @JsonKey(name: 'list_answer')
          final List<QuizListAnswerModel>? listAnswer})
      : _listAnswer = listAnswer;

  factory _$_QuizModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuizModelFromJson(json);

  @override
  final String? image;
  @override
  final String? question;
  @override
  final String? topic;
  final List<QuizListAnswerModel>? _listAnswer;
  @override
  @JsonKey(name: 'list_answer')
  List<QuizListAnswerModel>? get listAnswer {
    final value = _listAnswer;
    if (value == null) return null;
    if (_listAnswer is EqualUnmodifiableListView) return _listAnswer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizModel(image: $image, question: $question, topic: $topic, listAnswer: $listAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality()
                .equals(other._listAnswer, _listAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, question, topic,
      const DeepCollectionEquality().hash(_listAnswer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizModelCopyWith<_$_QuizModel> get copyWith =>
      __$$_QuizModelCopyWithImpl<_$_QuizModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizModelToJson(
      this,
    );
  }
}

abstract class _QuizModel implements QuizModel {
  const factory _QuizModel(
      {final String? image,
      final String? question,
      final String? topic,
      @JsonKey(name: 'list_answer')
          final List<QuizListAnswerModel>? listAnswer}) = _$_QuizModel;

  factory _QuizModel.fromJson(Map<String, dynamic> json) =
      _$_QuizModel.fromJson;

  @override
  String? get image;
  @override
  String? get question;
  @override
  String? get topic;
  @override
  @JsonKey(name: 'list_answer')
  List<QuizListAnswerModel>? get listAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuizModelCopyWith<_$_QuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizListAnswerModel _$QuizListAnswerModelFromJson(Map<String, dynamic> json) {
  return _QuizListAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$QuizListAnswerModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_answer')
  bool? get isAnswer => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizListAnswerModelCopyWith<QuizListAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizListAnswerModelCopyWith<$Res> {
  factory $QuizListAnswerModelCopyWith(
          QuizListAnswerModel value, $Res Function(QuizListAnswerModel) then) =
      _$QuizListAnswerModelCopyWithImpl<$Res, QuizListAnswerModel>;
  @useResult
  $Res call(
      {String? id, @JsonKey(name: 'is_answer') bool? isAnswer, String? answer});
}

/// @nodoc
class _$QuizListAnswerModelCopyWithImpl<$Res, $Val extends QuizListAnswerModel>
    implements $QuizListAnswerModelCopyWith<$Res> {
  _$QuizListAnswerModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizListAnswerModelCopyWith<$Res>
    implements $QuizListAnswerModelCopyWith<$Res> {
  factory _$$_QuizListAnswerModelCopyWith(_$_QuizListAnswerModel value,
          $Res Function(_$_QuizListAnswerModel) then) =
      __$$_QuizListAnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, @JsonKey(name: 'is_answer') bool? isAnswer, String? answer});
}

/// @nodoc
class __$$_QuizListAnswerModelCopyWithImpl<$Res>
    extends _$QuizListAnswerModelCopyWithImpl<$Res, _$_QuizListAnswerModel>
    implements _$$_QuizListAnswerModelCopyWith<$Res> {
  __$$_QuizListAnswerModelCopyWithImpl(_$_QuizListAnswerModel _value,
      $Res Function(_$_QuizListAnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isAnswer = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_QuizListAnswerModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizListAnswerModel implements _QuizListAnswerModel {
  const _$_QuizListAnswerModel(
      {this.id, @JsonKey(name: 'is_answer') this.isAnswer, this.answer});

  factory _$_QuizListAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuizListAnswerModelFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'is_answer')
  final bool? isAnswer;
  @override
  final String? answer;

  @override
  String toString() {
    return 'QuizListAnswerModel(id: $id, isAnswer: $isAnswer, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizListAnswerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isAnswer, isAnswer) ||
                other.isAnswer == isAnswer) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isAnswer, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizListAnswerModelCopyWith<_$_QuizListAnswerModel> get copyWith =>
      __$$_QuizListAnswerModelCopyWithImpl<_$_QuizListAnswerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizListAnswerModelToJson(
      this,
    );
  }
}

abstract class _QuizListAnswerModel implements QuizListAnswerModel {
  const factory _QuizListAnswerModel(
      {final String? id,
      @JsonKey(name: 'is_answer') final bool? isAnswer,
      final String? answer}) = _$_QuizListAnswerModel;

  factory _QuizListAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_QuizListAnswerModel.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'is_answer')
  bool? get isAnswer;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_QuizListAnswerModelCopyWith<_$_QuizListAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
