import 'package:flutter/material.dart';

//void main() => runApp(new SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample App',
      home: new SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget{
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => new _SampleAppPageState();
}

class  _SampleAppPageState extends State<SampleAppPage>{
  String textToShow = "I Like Flutter";

  void _updateText(){
    setState(() {
      if("I Like Flutter"==textToShow){
        textToShow = "Flutter is Awesome!";
      } else if("Flutter is Awesome!"==textToShow){
        textToShow = "I Like Flutter";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("test 1111");
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: new Center(
          child: new Text(textToShow),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: _updateText,
          tooltip: 'Update Text',
          child: new Icon(Icons.usb),),
    );
  }
}

