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
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(
            child: SizedBox(
          width: 5.0,
        )),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _count++;
    });
  }

  void _sustraer() {
    setState(() {
      _count--;
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }
}
