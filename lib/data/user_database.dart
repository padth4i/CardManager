import 'dart:convert';
import 'dart:ui';

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'user_database.g.dart';

class Statements extends Table {
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime()();
  @required
  TextColumn get sms_id => text().nullable()();
  @required
  TextColumn get statement_id => text()();
  @required
  TextColumn get account_type => text()();
  @required
  TextColumn get account_number => text()();
  @required
  TextColumn get org_name => text()();
  @required
  RealColumn get min_due => real().nullable()();
  @required
  RealColumn get total_due => real().nullable()();
  @required
  DateTimeColumn get due_date => dateTime().nullable()();
  @required
  BoolColumn get is_active => boolean().withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {statement_id, is_active};
}

class Accounts extends Table {
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime()();
  @required
  TextColumn get account_type => text()();
  @required
  TextColumn get account_number => text()();
  @required
  TextColumn get org_name => text()();
  @required
  RealColumn get spent_this_month => real().nullable()();
  @required
  RealColumn get balance => real().nullable()();
  @required
  RealColumn get outstanding_balance => real().nullable()();
}

class Expenses extends Table {
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime()();
  TextColumn get uid => text()();
  @required
  TextColumn get sms_uid => text().nullable()();
  TextColumn get smsMessage => text()();
  BoolColumn get is_expense => boolean()();
  BoolColumn get successful => boolean().nullable()();
  RealColumn get amount_in_sms => real()();
  RealColumn get expense_amount => real()();
  TextColumn get account_number => text().nullable()();
  RealColumn get account_balance => real().nullable()();
  BoolColumn get is_debit => boolean().nullable()();
  BoolColumn get is_credit => boolean().nullable()();
  BoolColumn get is_salary => boolean().nullable()();
  BoolColumn get is_upi => boolean().nullable()();
  BoolColumn get is_wallet => boolean().nullable()();
  BoolColumn get is_card => boolean().nullable()();
  BoolColumn get is_bank_transfer => boolean().nullable()();
  BoolColumn get is_refund => boolean().nullable()();
  TextColumn get merchant_name => text().nullable()();
  TextColumn get category => text().nullable()();
  TextColumn get wallet_name => text().nullable()();
  BoolColumn get is_withdrawal => boolean().nullable()();
  BoolColumn get is_bill => boolean().nullable()();
  RealColumn get minimum_due => real().nullable()();
  RealColumn get total_due => real().nullable()();
  DateTimeColumn get spend_date => dateTime()();
  TextColumn get source => text().nullable()();
  RealColumn get splurge_amount => real().nullable()();
  RealColumn get parser_version => real().nullable()();
}

@UseDao(
  tables: [Statements, Accounts, Expenses],
  queries: {
    // An implementation of this query will be generated inside the _$TaskDaoMixin
    // Both completeTasksGenerated() and watchCompletedTasksGenerated() will be created.
    'getSumExpenses':
        'SELECT category, sum(expense_amount) AS amount FROM expenses WHERE spend_date >= :date1 and spend_date <= :date2 GROUP BY category ORDER BY sum(expense_amount) DESC;'
  },
)
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  final AppDatabase db;
  UserDao(this.db) : super(db);

  Future<void> insertMultipleExpense(List<Expense> listExpenses) async {
    await into(expenses).insertAll(listExpenses);
  }

  Future<void> removeAllExpenses() async {
    await delete(expenses).go();
  }

  Future<List<Expense>> getExpenseByMonth(DateTime date) {
    return (select(expenses)
          ..where((a) => a.spend_date
              .isBiggerOrEqualValue(DateTime(date.year, date.month, 1))
              .equalsExp(
                  a.spend_date.isSmallerOrEqualValue(DateTime(date.year, date.month - 1, 1)))))
        .get();
  }
}

@UseMoor(tables: [Statements, Accounts, Expenses], daos: [UserDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;
}
