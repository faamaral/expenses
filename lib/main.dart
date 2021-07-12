import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(new Expenses());

class Expenses extends StatelessWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({Key? key}) : super(key: key);
  final _transaction = [
    Transaction(id: 'T1', title: 'Novo tenis', value: 2500.39, date: DateTime.now()),
    Transaction(id: 'T2', title: 'Nova camiseta', value: 2500.39, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas pessoais"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.blue[300],
                child: Text('Grafico'),
                elevation: 5,
              ),
            ),
            Column(
              children: _transaction.map((tr) => Card(
                child: Text(tr.title),
              )).toList(),
            )
          ]),
    );
  }
}
