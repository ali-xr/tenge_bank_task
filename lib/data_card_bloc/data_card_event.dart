part of 'data_card_bloc.dart';

@Freezed()
class DataCardEvent with _$DataCardEvent {
  factory DataCardEvent.getCardData(
      {required CardDataEntity cardDataEntity, required Function onTap}) = _GetCardData;
}
