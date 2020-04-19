import 'dart:convert';
import 'dart:ui';

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'user_database.g.dart';

class Statements extends Table{
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime()();
  @required TextColumn get sms_id => text().nullable()();
  @required TextColumn get statement_id => text()();
  @required TextColumn get account_type => text()();
  @required TextColumn get account_number => text()();
  @required TextColumn get org_name => text()();
  @required RealColumn get min_due => real().nullable()();
  @required RealColumn get total_due => real().nullable()();
  @required DateTimeColumn get due_date => dateTime().nullable()();
  @required BoolColumn get is_active => boolean().withDefault(const Constant(true))();
  @override
  Set<Column> get primaryKey => {statement_id,is_active};
}

class Accounts extends Table {
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime()();
  @required TextColumn get account_type => text()();
  @required TextColumn get account_number => text()();
  @required TextColumn get org_name => text()();
  @required RealColumn get spent_this_month => real().nullable()();
  @required RealColumn get balance => real().nullable()();
  @required RealColumn get outstanding_balance => real().nullable()();
}

@UseDao(
  tables: [Statements, Accounts],
  queries: {
    // An implementation of this query will be generated inside the _$TaskDaoMixin
    // Both completeTasksGenerated() and watchCompletedTasksGenerated() will be created.
    'getSumExpenses':
    'SELECT category, sum(expense_amount) AS amount FROM expenses WHERE spend_date >= :date1 and spend_date <= :date2 GROUP BY category ORDER BY sum(expense_amount) DESC;'
  },
)
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin{

  final AppDatabase db;
  UserDao(this.db):super(db);

  

}



@UseMoor( tables: [Statements, Accounts  ], daos: [UserDao])
class AppDatabase extends _$AppDatabase{

  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.sqlite',
    logStatements: true,
  )));

  @override
  int get schemaVersion => 1;

}
