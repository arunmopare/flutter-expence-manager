import '../models/transaction.dart';

import '../widgets/new_tranaction.dart';
import '../widgets/tranaction_list.dart';
import 'package:flutter/material.dart';

class UserTranaction extends StatefulWidget {
  @override
  _UserTranactionState createState() =>
      _UserTranactionState();
}

class _UserTranactionState extends State<UserTranaction> {
  final List<Transaction> _userTranactions = [
    Transaction(
        id: "t1",
        title: "New Shoes",
        amount: 69.99,
        date: DateTime.now()),
    Transaction(
        id: "t2",
        title: "New Boots",
        amount: 44.99,
        date: DateTime.now())
  ];
  void _addNewTranaction(String title, double amount) {
    final newTx = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTranactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTranaction),
        TansactionList(_userTranactions)
      ],
    );
  }
}
