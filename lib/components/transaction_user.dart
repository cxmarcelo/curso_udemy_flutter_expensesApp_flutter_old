import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';
import './transaction_form.dart';
import './transaction_list.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      title: "Novo Tênis de Corrida",
      value: 310.76,
      id: 't1',
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm()
      ],
    );
  }
}