import 'dart:ffi';
import 'dart:math';

import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/components/transaction_form.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 'T1', title: 'Novo tenis', value: 2500.39, date: DateTime.now()),
    Transaction(
        id: 'T2', title: 'Nova camiseta', value: 2500.39, date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionForm(_addTransaction),TransactionList(_transactions), ],
    );
  }
}