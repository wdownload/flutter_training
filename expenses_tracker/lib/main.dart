import 'package:expenses_tracker/widget/new_transaction.dart';
import 'package:expenses_tracker/widget/transactions_list.dart';
import 'package:expenses_tracker/widget/user_transactions.dart';
import 'package:flutter/material.dart';

import 'models/transaction.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: "TX123", title: "New shoes", amount: 55.99, date: DateTime.now()),
    Transaction(
        id: "TX245",
        title: "Weekly groceries",
        amount: 15.99,
        date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expenses Tracker",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expenses Tracker"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.blue,
                child: Text("Header"),
                elevation: 5,
              ),
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
