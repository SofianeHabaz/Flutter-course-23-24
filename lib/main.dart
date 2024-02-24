import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My first flutter app",
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter app"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          elevation: 6.0,
          shadowColor: Colors.red,
        ),
          body:Center(
            child: Text(
              "first app",
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.green,
                backgroundColor: Colors.amberAccent,
              ),
            ),
          ),
        floatingActionButton: FloatingActionButton(
          child: Text('press me'),
          onPressed: (){},
          backgroundColor: Colors.blue,
        ),
      )
    ),

  );
}
