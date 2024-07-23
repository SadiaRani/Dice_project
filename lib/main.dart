import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.teal,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int image = 1;
  int imagg = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  image = Random().nextInt(6) + 1;
                });
                debugPrint('Value$image');
              },
              child: Image.asset('images/dice$image.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  imagg = Random().nextInt(6) + 1;
                });
                debugPrint('right$imagg');
              },
              child: Image.asset('images/dice$imagg.png'),
            ),
          ),
        ],
      ),
    );
  }
}
