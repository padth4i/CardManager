part of 'card_bloc.dart';

abstract class CardState extends Equatable {
  const CardState();
}

class CardInitial extends CardState {
  @override
  List<Object> get props => [];
}

class CardsList extends CardState {
  @override
  List<Object> get props => [];
}

class CardExpanded extends CardState {
  final String cardColor, orgName, accountNumber, cardType;
  final double balance, spentThisMonth;
  final int cardIndex;

  CardExpanded(this.cardColor, this.orgName, this.accountNumber, this.cardType, this.balance, this.spentThisMonth, this.cardIndex);
  @override
  List<Object> get props => [cardColor, orgName, accountNumber, cardType, balance, spentThisMonth, cardIndex];
}