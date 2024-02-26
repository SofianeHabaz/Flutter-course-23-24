import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My first flutter app",
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),

  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fist Flutter app",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
        centerTitle: true,

      ),

      body:Center(
        child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.help),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('press', style: TextStyle(color: Colors.white),),
        onPressed: (){},
        backgroundColor: Colors.brown,
      ),
    );
  }
}
/*
Image.network("https://img.freepik.com/free-photo/ultra-detailed-nebula-abstract-wallpaper-4_1562-749.jpg?w=826&t=st=1708976245~exp=1708976845~hmac=d5b5cf02c7db126e92dcc3eb3a846d41697958b1f4a178aae26c253316c7daa1")
Image.asset("assets/3.jpg")
IconButton(
          onPressed: (){},
          icon: Icon(Icons.help),
        )
ElevatedButton(
          onPressed: (){},
          child: Text('Button'),
        )
OutlinedButton(
          onPressed: (){},
          child: Text('Button'),
        )
TextButton(
          onPressed: (){},
          child: Text('Button'),
        )

 */