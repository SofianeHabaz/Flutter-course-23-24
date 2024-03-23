import 'package:flutter/material.dart';
import 'package:id_card/character.dart';

void main() {
  runApp(MaterialApp(
    home: IdCard(),
    debugShowCheckedModeBanner: false,
  ));
}

class IdCard extends StatefulWidget {
  IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  Color primaryColor = Color(0xff39251E);

  Color secondaryColor = Color(0xffEAD9CA);

  List<Character> characters = [
    Character(name: "Monkey D. luffy", image:"https://images2.alphacoders.com/132/1325913.png", status: "Alive", pirate_crew: "Mugiwara", role: "Captain", devil_fruit: "Gomu gomu no mi", type: "Paramecia", bounty: 3000000000),
    Character(name: "Roronoa Zoro", image:"https://cdn.shopify.com/s/files/1/0755/5068/7558/files/roronoa-zoro-one-piece_8a066929-7e9c-4577-a08d-438e1a2d458a.webp?v=1686739171", status: "Alive", pirate_crew: "Mugiwara", role: "Vice", bounty: 1111000000),
    Character(name: "Vinsmoke Sanji", image:"https://i.pinimg.com/736x/f0/aa/9d/f0aa9db141b89ca7e36008c7a20302fd.jpg", status: "Alive", pirate_crew: "Mugiwara", role: "Cook", bounty: 1032000000),

  ];
  int index = 0;
  Color homeIconColor= Colors.white;
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8),
            child: IconButton(
                icon: Icon(Icons.refresh, size: 36, color:Colors.white),
              onPressed: (){
                  setState(() {
                    index = (index+1)%3;
                  });
              },

            ),
          ),
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
                backgroundImage: NetworkImage(characters[index].image),),
              SizedBox(
                height: 8,
              ),
              Text(
                characters[index].name,
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
                    characters[index].status,
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
                    characters[index].pirate_crew,
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
                    characters[index].role,
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
                    characters[index].devil_fruit ?? "N/A",
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
                    characters[index].type ?? "N/A",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 32,),
              Container(
                color: primaryColor,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Crew',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'juju',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: characters.map((ch){
                    return Container(
                      margin: EdgeInsets.only(right: 4),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        ch.name,
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                            fontFamily: 'juju',
                            fontWeight: FontWeight.bold),
                      ),
                    );
                  }).toList()
                ),
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
                        characters[index].bounty.toString(),
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