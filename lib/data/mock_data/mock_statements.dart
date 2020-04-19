import 'package:card_manager/data/user_database.dart';

class MockStatements {
  List<Statement> list;

  MockStatements() {
    list = List<Statement>();
    final mock_statement1 = new Statement(
      account_number: '1111111111111111',
      account_type: 'credit',
      is_active: true,
      org_name: 'HDFC',
      statement_id: 'a62h8d2b',
      updated_at: DateTime.now(),
      due_date: DateTime(2021, 07, 25),
      min_due: 200,
      total_due: 1000
    );
    final mock_statement2 = new Statement(
      account_number: '2222222222222222',
      account_type: 'debit',
      is_active: false,
      org_name: 'HDFC',
      statement_id: 'bfeu847h',
      updated_at: DateTime.now(),
      due_date: DateTime(2022, 01, 01),
      min_due: 300,
      total_due: 2000
    );
    final mock_statement3 = new Statement(
      account_number: '3333333333333333',
      account_type: 'credit',
      is_active: true,
      org_name: 'Axis',
      statement_id: 'c28fhriv',
      updated_at: DateTime.now(),
      due_date: DateTime(2020, 02, 04),
      min_due: 500,
      total_due: 5000
    );
      
      list.add(mock_statement1);
      list.add(mock_statement2);
      list.add(mock_statement3);
    print(list.length);
  }
}
