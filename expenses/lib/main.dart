import 'package:expenses/moldes/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesAPP());

class ExpensesAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 'ti',
      title: 'novo tennis corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              color: Colors.yellowAccent,
              child: Text('Grafico'),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(child: Text(tr.title));
            }).toList(),
          ),
        ],
      ),
    );
  }
}
