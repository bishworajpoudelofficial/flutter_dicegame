import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int imageNo;

  @override
  void initState(){
    super.initState();
    setState(() {
      rollDice();
    });
  }

   rollDice(){
    int random = (Random().nextInt(6))+1;
    setState(() {
      imageNo = random;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("img/$imageNo.png", width: 200.0,),
            SizedBox(
              height: 10,
            ),
            Container(
             
              width: MediaQuery.of(context).size.width*0.8,
                          child: FlatButton(
                color: Colors.indigo,
              
                onPressed: ()=> rollDice(), child: Text('Roll Dice', style: TextStyle(fontSize: 20),)),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Develop  By: Bishworaj Poudel',style: TextStyle(fontSize: 20))
          ],
        ),
      ),
      
    );
  }
}