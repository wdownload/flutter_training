import 'package:flutter/material.dart';

import '../widget/new_transaction.dart';
import '../widget/transactions_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  List<Transaction> _transactions = [
    Transaction(
        id: "TX123", title: "New shoes", amount: 55.99, date: DateTime.now()),
    Transaction(
        id: "TX245",
        title: "Weekly groceries",
        amount: 15.99,
        date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final _newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      _transactions.add(_newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionsList(_transactions)
      ],
    );
  }
}
