import 'package:flutter/material.dart';
import './user_transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 50,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller:
                    amountController, //flutter automatically connects the controllers with the text field ,these contollers listen to user input and save user input
              ),
              FlatButton(
                  onPressed: () => {
                        addTx(titleController.text,
                            double.parse(amountController.text))
                      },
                  textColor: Colors.purple,
                  child: Text('Add Transaction'))
            ],
          ),
        ));
  }
}
