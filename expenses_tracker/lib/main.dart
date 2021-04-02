import 'package:flutter/material.dart';

import './transaction.dart';

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
              child: Card(color: Colors.blue, child: Text("Header")),
            ),
            Column(
              children: transactions.map((e) {
                return Card(
                  child: Text(e.title),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
