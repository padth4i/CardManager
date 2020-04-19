import 'package:card_manager/data/user_database.dart';

class MockAccounts {
  List<Account> list;

  MockAccounts() {
    list = List<Account>();
    final mock_account1 = Account(
        account_number: '1111111111111111',
        account_type: 'credit',
        org_name: 'HDFC',
        updated_at: DateTime.now(),
        balance: 2000,
        outstanding_balance: 200,
        spent_this_month: 10220);
    final mock_account2 = Account(
        account_number: '2222222222222222',
        account_type: 'debit',
        org_name: 'HDFC',
        updated_at: DateTime.now(),
        balance: 3000,
        outstanding_balance: 300,
        spent_this_month: 5600);
    final mock_account3 = Account(
        account_number: '3333333333333333',
        account_type: 'credit',
        org_name: 'Axis',
        updated_at: DateTime.now(),
        balance: 10000,
        outstanding_balance: 5000,
        spent_this_month: 10000);
    list.add(mock_account1);
    list.add(mock_account2);
    list.add(mock_account3);
    print(list.length);
  }
}
