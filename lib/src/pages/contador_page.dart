import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  @override
  createState() => _CountState();
}

class _CountState extends State<Count> {
  final _textStyle = TextStyle(fontSize: 25);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Título'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de clicks:',
              style: _textStyle,
            ),
            Text(
              _count.toString(),
              style: _textStyle,
            )
          ],
        ),
      ),
      floatingActionButton: _createButton(),
    );
  }

  Widget _createButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        )
      ],
    );
  }

  void _add() {
    setState(() => _count++);
  }

  void _remove() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
