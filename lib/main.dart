import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dédé'),
          backgroundColor: Colors.red,
        ),
        body: dicePage2(),
      ),
    ),
  );
}

class dicePage extends StatelessWidget {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      print("Vous avez appuyé sur l'image de gauche");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('asset/images/dice$leftDiceNumber.png',
                          width: 200, height: 200),
                    ))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      print("Vous avez appuyé sur l'image de droite");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                          'asset/images/dice$rightDiceNumber.png',
                          width: 200,
                          height: 200),
                    ))),
          ],
        ),
      ),
    );
  }
}

class dicePage2 extends StatefulWidget {
  const dicePage2({Key? key}) : super(key: key);

  @override
  _dicePage2State createState() => _dicePage2State();
}

class _dicePage2State extends State<dicePage2> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  diceChanged(){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        diceChanged();
                      });
                      print("Vous avez appuyé sur l'image de gauche");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset('asset/images/dice$leftDiceNumber.png',
                          width: 200, height: 200),
                    ))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        diceChanged();
                      });
                      print("Vous avez appuyé sur l'image de droite");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                          'asset/images/dice$rightDiceNumber.png',
                          width: 200,
                          height: 200),
                    ))),
          ],
        ),
      ),
    );
  }
}
