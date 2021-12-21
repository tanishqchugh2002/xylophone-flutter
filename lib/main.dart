import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void sound(int a){
      final player = AudioCache();
      player.play('note$a.wav');
    }

    Expanded build(int a,Color b) =>
      Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(0)
          ),
          onPressed: (){
            sound(a);
          }, child: Container(
          width: double.infinity,


          color: b,
        ),
        ),);


    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              build(1,Colors.red),
              build(2,Colors.orange),
              build(3,Colors.yellow),
              build(4,Colors.green),
              build(5,Colors.blue),
              build(6,Colors.indigo),
              build(7,Colors.purple),
            ]
          )
        ),
      ),
    );
  }
}
