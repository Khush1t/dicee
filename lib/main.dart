import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.red.shade300,
        appBar: AppBar(
          elevation: 15,
          title: Text('Dice'),
          backgroundColor: Colors.red,
          shadowColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldicenum = 1;
  int rdicenum = 1;

  void dice_change() {
    setState(() {
      ldicenum = Random().nextInt(6) + 1;
      rdicenum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                dice_change();
              },
              child: Image.asset(
                'images/dice$ldicenum.png',
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                dice_change();
              },
              child: Image.asset(
                'images/dice$rdicenum.png',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
