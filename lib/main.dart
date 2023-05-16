import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var leftDiceNumber = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left Button got pressed');
              },
              child: const Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right Button got pressed');
              },
              child: const Image(
                image: AssetImage('images/dice2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
