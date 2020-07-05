import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp(
));

class XylophoneApp extends StatelessWidget {
  void playsound(int note){
    final player=AudioCache();
    player.play('note$note.wav');
  }
  Expanded Buildkey({Color color,int soundnumber}){
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: (){
            playsound(soundnumber);
          }
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Center(
            child: Text(
                'Nepali Music',
                style:TextStyle(
                  fontSize: 20,
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Pacifico',
                )

            ),
          ),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Buildkey(color:Colors.lightGreen,soundnumber:1),
              Buildkey(color:Colors.red,soundnumber:2),
              Buildkey(color:Colors.orange,soundnumber:3),
              Buildkey(color:Colors.blue,soundnumber:4),
              Buildkey(color:Colors.greenAccent,soundnumber:5),
              Buildkey(color:Colors.pink,soundnumber:6),
              Buildkey(color:Colors.purpleAccent,soundnumber:7),



            ],
          ),
        ),
      ),
    );
  }
}
