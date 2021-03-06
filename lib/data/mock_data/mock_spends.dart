import 'package:card_manager/data/user_database.dart';

class MockSpends {
  List<Expense> l;

  MockSpends() {
    l = List<Expense>();

    for (int i = 1; i <= 3; i++) {
      final mock_spend1 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 120,
          expense_amount: 120,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Leon Grill",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 5, 4),
          splurge_amount: null,
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend2 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 90,
          expense_amount: 90,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Goodness Kitchen",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 5, 15),
          splurge_amount: 10,
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend3 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 60,
          expense_amount: 60,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Bounce",
          category: "Travel",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 5, 4),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend4 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 30,
          expense_amount: 30,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Citizen",
          category: "Miscellaneous",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 4, 30),
          parser_version: null,
          is_debit: true,
          smsMessage: '');

      final mock_spend5 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 80,
          expense_amount: 80,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Brekkie Shop",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 3, 24),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend6 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 70,
          expense_amount: 70,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Eat.Fit",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 4, 22),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend7 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 50,
          expense_amount: 50,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Rapido",
          category: "Travel",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 4, 22),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend8 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 20,
          expense_amount: 20,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Hot Chips",
          category: "Miscellaneous",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 3, 16),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend9 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 40,
          expense_amount: 40,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Nilgiris",
          category: "Grocery",
          splurge_amount: 10,
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 5, 2),
          parser_version: null,
          is_debit: true,
          smsMessage: '');

      final mock_spend10 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 120,
          expense_amount: 120,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Leon Grill",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 4, 30),
          splurge_amount: null,
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend11 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 90,
          expense_amount: 90,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Goodness Kitchen",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 3, 18),
          splurge_amount: 10,
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend12 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 60,
          expense_amount: 60,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Bounce",
          category: "Travel",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 4, 29),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend13 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 30,
          expense_amount: 30,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Citizen",
          category: "Miscellaneous",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 5, 29),
          parser_version: null,
          is_debit: true,
          smsMessage: '');

      final mock_spend14 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 80,
          expense_amount: 80,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Brekkie Shop",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 4, 19),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend15 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 70,
          expense_amount: 70,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Eat.Fit",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 3, 24),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend16 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 50,
          expense_amount: 50,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Rapido",
          category: "Travel",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 2, 15),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend17 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 20,
          expense_amount: 20,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Hot Chips",
          category: "Miscellaneous",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 1, 24),
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend18 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 40,
          expense_amount: 40,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Nilgiris",
          category: "Grocery",
          splurge_amount: 10,
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 4, 1),
          parser_version: null,
          is_debit: true,
          smsMessage: '');

      final mock_spend19 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 120,
          expense_amount: 120,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Leon Grill",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 5, 31),
          splurge_amount: null,
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      final mock_spend20 = new Expense(
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
          uid: "uid",
          sms_uid: null,
          is_expense: true,
          amount_in_sms: 90,
          expense_amount: 90,
          account_number: (1111111111111111 * i).toString(),
          account_balance: null,
          merchant_name: "Goodness Kitchen",
          category: "Food",
          minimum_due: null,
          total_due: null,
          spend_date: DateTime(2020, 5, 15),
          splurge_amount: 10,
          parser_version: null,
          is_debit: true,
          smsMessage: '');
      l.add(mock_spend1);
      l.add(mock_spend2);
      l.add(mock_spend3);
      l.add(mock_spend4);
      l.add(mock_spend5);
      l.add(mock_spend6);
      l.add(mock_spend7);
      l.add(mock_spend8);
      l.add(mock_spend9);
      l.add(mock_spend10);
      l.add(mock_spend11);
      l.add(mock_spend12);
      l.add(mock_spend13);
      l.add(mock_spend14);
      l.add(mock_spend15);
      l.add(mock_spend16);
      l.add(mock_spend17);
      l.add(mock_spend18);
      l.add(mock_spend19);
      l.add(mock_spend20);
      print(l.length);
    }
  }
}
