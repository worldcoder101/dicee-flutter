import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Gamblers Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceValue = 1;
  int rightDiceValue = 2;

  void changeDiceFace(){
    setState((){
      leftDiceValue = Random().nextInt(6) + 1;
      rightDiceValue = Random().nextInt(6) + 1;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: (){
                    changeDiceFace();
                  },
                  child: Image.asset(
                    "images/dice$leftDiceValue.png",
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){

                  },
                  child: Image.asset(
                    "images/dice$rightDiceValue.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
