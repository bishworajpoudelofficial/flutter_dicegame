import 'package:dice_roller/homepage.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  title: "Dice Roller",
  theme: ThemeData.dark(),
  home: DiceApp()
));


class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Dice Roller App'),
    ),
    body: HomePage(),
  );
  }
}