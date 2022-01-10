import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dédé'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Row(
                children: [

                Expanded(
                  child: TextButton(onPressed:(){print("Vous avez appuyé sur l'image de gauche");},
                      child: Image.asset('asset/images/dice$leftDiceNumber.png', width: 200, height: 200))),

                Expanded(
                    child: TextButton(onPressed:(){print("Vous avez appuyé sur l'image de droite");},
                        child: Image.asset('asset/images/dice2.png',width: 200,height: 200))),
    ],
    ),
    ),
    );
    }
}
