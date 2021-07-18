import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  final titleControler = TextEditingController();
  final valueControler = TextEditingController();

  final _transaction = [
    Transaction(
        id: 'T1', title: 'Novo tenis', value: 2500.39, date: DateTime.now()),
    Transaction(
        id: 'T2', title: 'Nova camiseta', value: 2500.39, date: DateTime.now()),
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
              children: _transaction
                  .map((tr) => Card(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple, width: 2)),
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'R\$ ${tr.value.toStringAsFixed(2)}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.purple),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tr.title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  DateFormat('d MMM y').format(tr.date),
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      controller: titleControler,
                      decoration: InputDecoration(
                        labelText: 'Titulo',
                      ),
                    ),
                    TextField(
                      controller: valueControler,
                      decoration: InputDecoration(
                        labelText: 'Valor (R\$)',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              print(titleControler.text);
                              print(valueControler.text);
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.purple,
                            ),
                            child: Text("Nova transação")),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
