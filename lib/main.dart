import 'package:flutter/material.dart';
import 'dio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
            color: Colors.red,
            onPressed: () {
              server.getReq();
            },
            child: Text("GET"),
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              server.postReq();
            },
            child: Text("POST"),
          ),
          FlatButton(
            color: Colors.grey,
            onPressed: () {
              server.getReqWithQuery();
            },
            child: Text("POST"),
          )
        ],
      ),
    );
  }
}
