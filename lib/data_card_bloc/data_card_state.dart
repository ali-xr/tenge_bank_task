part of 'data_card_bloc.dart';

@Freezed()
class DataCardState with _$DataCardState {
  const factory DataCardState({
    // @Default('') String panNumber,
    @Default(CardDataEntity()) CardDataEntity cardDataEntity,
  }) = _DataCardState;
}
