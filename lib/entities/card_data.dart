import 'package:equatable/equatable.dart';

class CardDataEntity extends Equatable {
  final String panNumber;
  final String date;
  final String fullName;
  const CardDataEntity({
    this.date = '',
    this.fullName = '',
    this.panNumber = '',
  });
  @override
  List<Object> get props => [date, fullName, panNumber];
}
