part of 'card_bloc.dart';

abstract class CardEvent extends Equatable {
  const CardEvent();
}

class ChangeScrollPhysicsToShow extends CardEvent {
  final ScrollPhysics physics;

  ChangeScrollPhysicsToShow(this.physics);
  @override
  List<Object> get props => [physics];
}

class ChangeScrollPhysicsToHidden extends CardEvent {
  final ScrollPhysics physics;

  ChangeScrollPhysicsToHidden(this.physics);
  @override
  List<Object> get props => [physics];
}