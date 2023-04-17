import 'package:expenses_app/widgets/textfieldss.dart';
import 'package:expenses_app/widgets/cards_list.dart';
import 'package:flutter/material.dart';

import '../models/transactions.dart';

class UserTrasnaction extends StatefulWidget {
  const UserTrasnaction({super.key});

  @override
  State<UserTrasnaction> createState() => _UserTrasnactionState();
}

class _UserTrasnactionState extends State<UserTrasnaction> {
  final List<Transaction> _userTransaction = [];
  addTransaction(String title, double amount) {
    setState(() {});
    // final addTx = transaction.add();
    _userTransaction
        .add(Transaction(amount: amount, date: "h", id: "T3", title: title));
    // titleController.clear();
    // amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
          addTransaction: addTransaction,
        ),
        TransactionList(
          userTrasnaction: _userTransaction,
        )
      ],
    );
  }
}
