import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State createState() => new _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _labelStyle = new TextStyle(fontSize: 30);
  int _count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Título'), centerTitle: true, elevation: 10),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de tabs',
              style: _labelStyle,
            ),
            Text(
              '$_count',
              style: _labelStyle,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
