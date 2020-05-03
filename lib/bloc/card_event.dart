part of 'card_bloc.dart';

abstract class CardEvent extends Equatable {
  const CardEvent();
}

class CardTapEvent extends CardEvent {
  final String cardColor, orgName, accountNumber, cardType;
  final double balance, spentThisMonth;
  final int cardIndex;

  CardTapEvent(this.cardColor, this.orgName, this.accountNumber, this.cardType, this.balance,
      this.spentThisMonth, this.cardIndex);
  @override
  List<Object> get props =>
      [cardColor, orgName, accountNumber, cardType, balance, spentThisMonth, cardIndex];
}

class CardReturnEvent extends CardEvent {
  @override
  List<Object> get props => [];
}
