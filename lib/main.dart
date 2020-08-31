import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceLuck());
}

class DiceLuck extends StatefulWidget {
  @override
  _DiceLuckState createState() => _DiceLuckState();
}

class _DiceLuckState extends State<DiceLuck> {
  int leftDice = 1;
  int rightDice = 3;
  // Function to change the Dice
  void changeDice() {
    // Change the base state on Run
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        body: SafeArea(
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Image.asset('images/dice$leftDice.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Image.asset('images/dice$rightDice.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
