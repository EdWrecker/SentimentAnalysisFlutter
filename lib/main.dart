// @dart=2.9
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untitled/navigation.dart';
import 'navigation.dart';
//import 'package:english_words/english_words.dart';
void main() => runApp(MaterialApp(
        home: GradientState(),
));

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to my first Application',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Emotion Detection System'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                   // icons: Icons.send,
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Text',
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  label: const Text('submit'),
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey[600],
                Colors.teal[200],
                Colors.cyanAccent[400],
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}*/
class GradientState extends StatefulWidget {
  //const GradientState({Key? key}) : super(key: key);

  @override
  _GradientStateState createState() => _GradientStateState();
}

class _GradientStateState extends State<GradientState> {

  TextEditingController _textfieldcont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to my first Application',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Emotion Detection System'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _textfieldcont,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    // icons: Icons.send,
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Text',
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                FloatingActionButton(
                  onPressed: () {
                    var _text = _textfieldcont.text;
                    print("Text:" + _text);
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                     return NavigationScreen();
                   },),);
                  },
                  child: Text('submit'),
                //  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey[600],
                Colors.teal[200],
                Colors.cyanAccent[400],
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}

