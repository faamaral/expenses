import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleControler = TextEditingController();
  final valueControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
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
            );
  }
}