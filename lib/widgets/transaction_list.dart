import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';
import './user_transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((t) {
      return Card(
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.purple,
                width: 3,
              )),
              padding: EdgeInsets.all(12),
              child: Text(
                '\$${t.amount}', //string interpolation ->${variablename} and using escape char '\' to actually print $
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    t.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(t.date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ])
          ],
        ),
      );
    }).toList());
  }
}
