import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
    debugShowCheckedModeBanner: false,
  ));
}

class IdCard extends StatelessWidget {
  IdCard({super.key});
  Color primaryColor = Color(0xff39251E);
  Color secondaryColor = Color(0xffEAD9CA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "One Piece Card",
          style: TextStyle(
              color: Colors.white, fontFamily: 'one-piece', fontSize: 32),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      backgroundColor: secondaryColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://images2.alphacoders.com/132/1325913.png"),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'MONKEY D. LUFFY',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontFamily: 'one-piece',
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              Divider(
                height: 48,
                color: primaryColor.withOpacity(0.4),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    color: primaryColor,
                    child: Text(
                    'STATUS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                                  ),
                  ),
                  SizedBox(width: 8,),
                  Text(
                      "Alive",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 32,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    color: primaryColor,
                    child: Text(
                      'PIRATE CREW',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'juju',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text(
                    "Mugiwara",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    color: primaryColor,
                    child: Text(
                      'ROLE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'juju',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text(
                    "Captain",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 32,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    color: primaryColor,
                    child: Text(
                      'DEVIL FRUIT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'juju',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text(
                    "Gomu gomu no mi",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 32,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    color: primaryColor,
                    child: Text(
                      'TYPE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'juju',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text(
                    "Paramecia",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: primaryColor,
                  )
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height:32,
                        width:32,
                        child: Image.asset('assets/berries.png', color: primaryColor,)
                    ),
                    SizedBox(width:8),
                    Text(
                        "3.000.000.000",
                        style: TextStyle(
                          fontFamily: "juju",
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: primaryColor
                        ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




/*Divider(
                height: 48,
                color: primaryColor!.withOpacity(0.4),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      color: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Text(
                        "STATUS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'juju',
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Alive",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      color: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Text(
                        "PIRATE CREW",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'juju',
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Mugiwara",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                      color: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Text(
                        "Role",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'juju',
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Captain",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      color: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Text(
                        "DEVIL FRUIT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'juju',
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Gomu gomu no mi",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      color: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Text(
                        "TYPE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'juju',
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Paramecia",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: primaryColor!, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 26,
                      height: 26,
                      child: Image.asset(
                        "assets/berries.png",
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "3.000.000.000",
                      style: TextStyle(
                          fontFamily: 'juju',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                  ],
                ),
              ),*/