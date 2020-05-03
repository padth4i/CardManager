import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

class SpendsObject extends Equatable{

 final List<String> tags, id, category, expense_type, smsMessages;
 final List<DateTime> date;
 final List<double> amount;
 final int selected;
 final double total_spends;
 final DateTime initialDate;
 final DateTime finalDate;

 SpendsObject({
    this.initialDate,
    this.finalDate,
    @required this.tags,
    @required this.date,
    @required this.id,
    @required this.amount,
    @required this.selected,
    @required this.total_spends,
    @required this.category,
    @required this.expense_type,
    @required this.smsMessages,

  });

  @override
  List<Object> get props => [
    tags,
    date,
    id,
    amount,
    selected,
    total_spends,
    category,
    expense_type,
    smsMessages,
  ];

}