import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

class SpendsObject extends Equatable{

 final List<String> tags, category, expense_type, accountNumber;
 final List<DateTime> date;
 final List<double> amount;

 final double total_spends;

 SpendsObject({
    @required this.tags,
    @required this.date,
    @required this.amount,
    @required this.total_spends,
    @required this.category,
    @required this.expense_type,
    @required this.accountNumber,

  });

  @override
  List<Object> get props => [
    tags,
    date,
    amount,
    total_spends,
    category,
    expense_type,
    accountNumber
  ];

}