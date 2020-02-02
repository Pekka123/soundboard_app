import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget getButton({String btnName, Color btnColor, String musicName}) {
    return Container(
      color: btnColor,
      height: 150,
      width: 150,
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play("$musicName.wav");
        },
        child: Text(
          btnName,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget getRow(
      {String btnName1,
      String btnName2,
      Color btnColor1,
      Color btnColor2,
      String music1,
      String music2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        getButton(btnColor: btnColor1, btnName: btnName1, musicName: music1),
        getButton(btnColor: btnColor2, btnName: btnName2, musicName: music2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sound Board',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                getRow(
                  btnColor1: Colors.red,
                  btnName1: "Aeroplane",
                  music1: "airplane",
                  btnColor2: Colors.blue,
                  btnName2: "Dog",
                  music2: "dogbrk",
                ),
                getRow(
                  btnColor1: Colors.cyan,
                  btnName1: "Elephant",
                  music1: "elephant9",
                  btnColor2: Colors.blueGrey,
                  btnName2: "Lion",
                  music2: "lion4",
                ),
                getRow(
                  btnColor1: Colors.green,
                  btnName1: "Haunted",
                  music1: "hauntedhouse",
                  btnColor2: Colors.purpleAccent,
                  btnName2: "Tiger",
                  music2: "Tiger6",
                ),
                getRow(
                  btnColor1: Colors.brown,
                  btnName1: "Monkey",
                  music1: "monkeys1",
                  btnColor2: Colors.orangeAccent,
                  btnName2: "Laugh",
                  music2: "laughhowl1",
                ),
              ],
            ),
          ),
        ));
  }
}
