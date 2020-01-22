import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle labelStyle = new TextStyle(fontSize: 30);
  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Título'), centerTitle: true, elevation: 10),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de clicks',
              style: labelStyle,
            ),
            Text(
              '$count',
              style: labelStyle,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
