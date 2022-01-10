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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [

            Expanded(child: Image.asset('asset/images/dice1.png',width: 200,height: 200)),
            Expanded(child: Image.asset('asset/images/dice2.png',width: 200,height: 200)),
          ],
        ),
      ),
    );
  }
}
