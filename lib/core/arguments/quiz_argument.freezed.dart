// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_argument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizArgument {
  String? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  List<QuizEntities> get listQuestion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizArgumentCopyWith<QuizArgument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizArgumentCopyWith<$Res> {
  factory $QuizArgumentCopyWith(
          QuizArgument value, $Res Function(QuizArgument) then) =
      _$QuizArgumentCopyWithImpl<$Res, QuizArgument>;
  @useResult
  $Res call({String? id, int? index, List<QuizEntities> listQuestion});
}

/// @nodoc
class _$QuizArgumentCopyWithImpl<$Res, $Val extends QuizArgument>
    implements $QuizArgumentCopyWith<$Res> {
  _$QuizArgumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? listQuestion = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      listQuestion: null == listQuestion
          ? _value.listQuestion
          : listQuestion // ignore: cast_nullable_to_non_nullable
              as List<QuizEntities>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizArgumentCopyWith<$Res>
    implements $QuizArgumentCopyWith<$Res> {
  factory _$$_QuizArgumentCopyWith(
          _$_QuizArgument value, $Res Function(_$_QuizArgument) then) =
      __$$_QuizArgumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int? index, List<QuizEntities> listQuestion});
}

/// @nodoc
class __$$_QuizArgumentCopyWithImpl<$Res>
    extends _$QuizArgumentCopyWithImpl<$Res, _$_QuizArgument>
    implements _$$_QuizArgumentCopyWith<$Res> {
  __$$_QuizArgumentCopyWithImpl(
      _$_QuizArgument _value, $Res Function(_$_QuizArgument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? listQuestion = null,
  }) {
    return _then(_$_QuizArgument(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      listQuestion: null == listQuestion
          ? _value._listQuestion
          : listQuestion // ignore: cast_nullable_to_non_nullable
              as List<QuizEntities>,
    ));
  }
}

/// @nodoc

class _$_QuizArgument implements _QuizArgument {
  const _$_QuizArgument(
      {this.id, this.index, required final List<QuizEntities> listQuestion})
      : _listQuestion = listQuestion;

  @override
  final String? id;
  @override
  final int? index;
  final List<QuizEntities> _listQuestion;
  @override
  List<QuizEntities> get listQuestion {
    if (_listQuestion is EqualUnmodifiableListView) return _listQuestion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listQuestion);
  }

  @override
  String toString() {
    return 'QuizArgument(id: $id, index: $index, listQuestion: $listQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizArgument &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._listQuestion, _listQuestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, index,
      const DeepCollectionEquality().hash(_listQuestion));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizArgumentCopyWith<_$_QuizArgument> get copyWith =>
      __$$_QuizArgumentCopyWithImpl<_$_QuizArgument>(this, _$identity);
}

abstract class _QuizArgument implements QuizArgument {
  const factory _QuizArgument(
      {final String? id,
      final int? index,
      required final List<QuizEntities> listQuestion}) = _$_QuizArgument;

  @override
  String? get id;
  @override
  int? get index;
  @override
  List<QuizEntities> get listQuestion;
  @override
  @JsonKey(ignore: true)
  _$$_QuizArgumentCopyWith<_$_QuizArgument> get copyWith =>
      throw _privateConstructorUsedError;
}
