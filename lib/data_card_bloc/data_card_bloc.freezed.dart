// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataCardEvent {
  CardDataEntity get cardDataEntity => throw _privateConstructorUsedError;
  Function get onTap => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardDataEntity cardDataEntity, Function onTap)
        getCardData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardDataEntity cardDataEntity, Function onTap)?
        getCardData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardDataEntity cardDataEntity, Function onTap)?
        getCardData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardData value) getCardData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardData value)? getCardData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardData value)? getCardData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataCardEventCopyWith<DataCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCardEventCopyWith<$Res> {
  factory $DataCardEventCopyWith(
          DataCardEvent value, $Res Function(DataCardEvent) then) =
      _$DataCardEventCopyWithImpl<$Res, DataCardEvent>;
  @useResult
  $Res call({CardDataEntity cardDataEntity, Function onTap});
}

/// @nodoc
class _$DataCardEventCopyWithImpl<$Res, $Val extends DataCardEvent>
    implements $DataCardEventCopyWith<$Res> {
  _$DataCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardDataEntity = null,
    Object? onTap = null,
  }) {
    return _then(_value.copyWith(
      cardDataEntity: null == cardDataEntity
          ? _value.cardDataEntity
          : cardDataEntity // ignore: cast_nullable_to_non_nullable
              as CardDataEntity,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Function,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCardDataCopyWith<$Res>
    implements $DataCardEventCopyWith<$Res> {
  factory _$$_GetCardDataCopyWith(
          _$_GetCardData value, $Res Function(_$_GetCardData) then) =
      __$$_GetCardDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardDataEntity cardDataEntity, Function onTap});
}

/// @nodoc
class __$$_GetCardDataCopyWithImpl<$Res>
    extends _$DataCardEventCopyWithImpl<$Res, _$_GetCardData>
    implements _$$_GetCardDataCopyWith<$Res> {
  __$$_GetCardDataCopyWithImpl(
      _$_GetCardData _value, $Res Function(_$_GetCardData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardDataEntity = null,
    Object? onTap = null,
  }) {
    return _then(_$_GetCardData(
      cardDataEntity: null == cardDataEntity
          ? _value.cardDataEntity
          : cardDataEntity // ignore: cast_nullable_to_non_nullable
              as CardDataEntity,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_GetCardData implements _GetCardData {
  _$_GetCardData({required this.cardDataEntity, required this.onTap});

  @override
  final CardDataEntity cardDataEntity;
  @override
  final Function onTap;

  @override
  String toString() {
    return 'DataCardEvent.getCardData(cardDataEntity: $cardDataEntity, onTap: $onTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCardData &&
            (identical(other.cardDataEntity, cardDataEntity) ||
                other.cardDataEntity == cardDataEntity) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardDataEntity, onTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCardDataCopyWith<_$_GetCardData> get copyWith =>
      __$$_GetCardDataCopyWithImpl<_$_GetCardData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardDataEntity cardDataEntity, Function onTap)
        getCardData,
  }) {
    return getCardData(cardDataEntity, onTap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardDataEntity cardDataEntity, Function onTap)?
        getCardData,
  }) {
    return getCardData?.call(cardDataEntity, onTap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardDataEntity cardDataEntity, Function onTap)?
        getCardData,
    required TResult orElse(),
  }) {
    if (getCardData != null) {
      return getCardData(cardDataEntity, onTap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardData value) getCardData,
  }) {
    return getCardData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardData value)? getCardData,
  }) {
    return getCardData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardData value)? getCardData,
    required TResult orElse(),
  }) {
    if (getCardData != null) {
      return getCardData(this);
    }
    return orElse();
  }
}

abstract class _GetCardData implements DataCardEvent {
  factory _GetCardData(
      {required final CardDataEntity cardDataEntity,
      required final Function onTap}) = _$_GetCardData;

  @override
  CardDataEntity get cardDataEntity;
  @override
  Function get onTap;
  @override
  @JsonKey(ignore: true)
  _$$_GetCardDataCopyWith<_$_GetCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataCardState {
// @Default('') String panNumber,
  CardDataEntity get cardDataEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataCardStateCopyWith<DataCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCardStateCopyWith<$Res> {
  factory $DataCardStateCopyWith(
          DataCardState value, $Res Function(DataCardState) then) =
      _$DataCardStateCopyWithImpl<$Res, DataCardState>;
  @useResult
  $Res call({CardDataEntity cardDataEntity});
}

/// @nodoc
class _$DataCardStateCopyWithImpl<$Res, $Val extends DataCardState>
    implements $DataCardStateCopyWith<$Res> {
  _$DataCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardDataEntity = null,
  }) {
    return _then(_value.copyWith(
      cardDataEntity: null == cardDataEntity
          ? _value.cardDataEntity
          : cardDataEntity // ignore: cast_nullable_to_non_nullable
              as CardDataEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCardStateCopyWith<$Res>
    implements $DataCardStateCopyWith<$Res> {
  factory _$$_DataCardStateCopyWith(
          _$_DataCardState value, $Res Function(_$_DataCardState) then) =
      __$$_DataCardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardDataEntity cardDataEntity});
}

/// @nodoc
class __$$_DataCardStateCopyWithImpl<$Res>
    extends _$DataCardStateCopyWithImpl<$Res, _$_DataCardState>
    implements _$$_DataCardStateCopyWith<$Res> {
  __$$_DataCardStateCopyWithImpl(
      _$_DataCardState _value, $Res Function(_$_DataCardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardDataEntity = null,
  }) {
    return _then(_$_DataCardState(
      cardDataEntity: null == cardDataEntity
          ? _value.cardDataEntity
          : cardDataEntity // ignore: cast_nullable_to_non_nullable
              as CardDataEntity,
    ));
  }
}

/// @nodoc

class _$_DataCardState implements _DataCardState {
  const _$_DataCardState({this.cardDataEntity = const CardDataEntity()});

// @Default('') String panNumber,
  @override
  @JsonKey()
  final CardDataEntity cardDataEntity;

  @override
  String toString() {
    return 'DataCardState(cardDataEntity: $cardDataEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataCardState &&
            (identical(other.cardDataEntity, cardDataEntity) ||
                other.cardDataEntity == cardDataEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardDataEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCardStateCopyWith<_$_DataCardState> get copyWith =>
      __$$_DataCardStateCopyWithImpl<_$_DataCardState>(this, _$identity);
}

abstract class _DataCardState implements DataCardState {
  const factory _DataCardState({final CardDataEntity cardDataEntity}) =
      _$_DataCardState;

  @override // @Default('') String panNumber,
  CardDataEntity get cardDataEntity;
  @override
  @JsonKey(ignore: true)
  _$$_DataCardStateCopyWith<_$_DataCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
