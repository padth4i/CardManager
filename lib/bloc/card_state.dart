part of 'card_bloc.dart';

abstract class CardState extends Equatable {
  const CardState();
}

class CardInitial extends CardState {
  @override
  List<Object> get props => [];
}

class ChangedScrollPhysicsToShown extends CardState {
  final ScrollPhysics physics;

  ChangedScrollPhysicsToShown(this.physics);
  @override
  List<Object> get props => [physics];
}

class ChangedScrollPhysicsToHidden extends CardState {
  final ScrollPhysics physics;

  ChangedScrollPhysicsToHidden(this.physics);
  @override
  List<Object> get props => [physics];
}