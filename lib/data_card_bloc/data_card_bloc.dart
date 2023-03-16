import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tenge_bank_test/entities/card_data.dart';

part 'data_card_event.dart';
part 'data_card_state.dart';
part 'data_card_bloc.freezed.dart';

class DataCardBloc extends Bloc<DataCardEvent, DataCardState> {
  DataCardBloc() : super(const DataCardState()) {
    on<_GetCardData>((event, emit) {
      emit(state.copyWith(
        cardDataEntity: event.cardDataEntity,
      ));
      event.onTap();
    });

  }
}
