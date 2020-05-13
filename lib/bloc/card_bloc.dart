import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  @override
  CardState get initialState => ChangedScrollPhysicsToHidden(NeverScrollableScrollPhysics());

  @override
  Stream<CardState> mapEventToState(
    CardEvent event,
  ) async* {
    if (event is ChangeScrollPhysicsToHidden) {
      print('inside hidden');
      yield ChangedScrollPhysicsToHidden(event.physics);
    }
    if (event is ChangeScrollPhysicsToShow) {
      print('inside shown');
      yield ChangedScrollPhysicsToShown(event.physics);
    }
  }
}
