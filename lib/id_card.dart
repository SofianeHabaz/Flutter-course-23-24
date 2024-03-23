import 'package:flutter/material.dart';
import 'character.dart';
import 'constants.dart';

class IdCard extends StatefulWidget {
  IdCard({super.key, required this.character});
  final Character character;
  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  @override
  Widget build(BuildContext context) {
    Character character = widget.character;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "One Piece Card",
          style: TextStyle(
              color: Colors.white, fontFamily: 'one-piece', fontSize: 32),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: [
          IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: (){
            Navigator.pop(context);
          },
          )
        ],
      ),
      backgroundColor: secondaryColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(character.image),),
              SizedBox(
                height: 8,
              ),
              Text(
                character.name,
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
                    character.status,
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
                    character.pirate_crew,
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
                    character.role,
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
                    character.devil_fruit ?? "N/A",
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
                    character.type ?? "N/A",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 32,),

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
                      character.bounty.toString(),
                      style: TextStyle(
                          fontFamily: "juju",
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                          letterSpacing: 2.0
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