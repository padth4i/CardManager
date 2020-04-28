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
    // TODO: implement mapEventToState
  }
}
