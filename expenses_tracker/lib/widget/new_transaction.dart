import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTransaction;

  void submitData() {
    final amountData = amountController.text;
    final titleData = titleController.text;

    if (amountData.isEmpty || double.parse(amountData) < 0) {
      return;
    }
    if (titleData.isEmpty) return;
    addTransaction(titleData, double.parse(amountData));
  }

  NewTransaction(this.addTransaction);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "title"),
              keyboardType: TextInputType.text,
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "amount"),
              keyboardType: TextInputType.number,
              controller: amountController,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: submitData,
              child: Text("Add transaction"),
              style: TextButton.styleFrom(
                  primary: Colors.purple, backgroundColor: Colors.grey[200]),
            )
          ],
        ),
      ),
    );
  }
}
