import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  @override
  CardState get initialState => CardInitial();

  @override
  Stream<CardState> mapEventToState(
    CardEvent event,
  ) async* {
    if (event is CardTapEvent) {
      print('inside bloc');
      yield CardExpanded(event.cardColor, event.orgName, event.accountNumber, event.cardType, event.balance, event.spentThisMonth, event.cardIndex);
    }
    if (event is CardReturnEvent) {
      print('return');
      yield CardsList();
    }
  }
}
