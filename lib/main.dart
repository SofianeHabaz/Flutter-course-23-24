import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
    debugShowCheckedModeBanner: false,
  ));
}

class IdCard extends StatelessWidget {
  IdCard({super.key});
  Color? primaryColor = Color(0xff39251E);
  Color? secondaryColor = Color(0xffEAD9CA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "One Piece Card",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'one-piece',
            fontSize: 32
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      backgroundColor: secondaryColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage("https://images2.alphacoders.com/132/1325913.png"),
              ),
              SizedBox(
                height: 8,
              ),
              Text('MONKEY D. LUFFY',
                style: TextStyle(
                  letterSpacing: 1,
                  fontFamily: 'one-piece',
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,

                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/berries.png", color: primaryColor,),
                  ),
                  Text("3.000.000.000", style: TextStyle(fontFamily: 'juju', fontSize: 32, ),),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

