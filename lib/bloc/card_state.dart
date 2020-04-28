part of 'card_bloc.dart';

abstract class CardState extends Equatable {
  const CardState();
}

class CardInitial extends CardState {
  @override
  List<Object> get props => [];
}

class CardList extends CardState {
  @override
  List<Object> get props => [];
}
