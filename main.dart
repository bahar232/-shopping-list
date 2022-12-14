import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/user_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: SingleChildScrollView(
            child: Column(
                //mainAxisAlignment:
                // MainAxisAlignment.spaceBetween /*x ekseninde hizalama*/,
                crossAxisAlignment:
                    CrossAxisAlignment.center /*y ekseninde hizalama*/,
                children: <Widget>[
              Container(
                  width: double.infinity,
                  child: const Card(
                    color: Colors.blue,
                    child: Text('Chart'),
                    elevation: 5,
                  )),
              UserTransactions(),
            ])));
  }
}
