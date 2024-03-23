import "package:flutter/material.dart";

import "character.dart";
import "constants.dart";
import "id_card.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List<Character> characters = [
    Character(name: "Monkey D. luffy", image:"https://images2.alphacoders.com/132/1325913.png", status: "Alive", pirate_crew: "Mugiwara", role: "Captain", devil_fruit: "Gomu gomu no mi", type: "Paramecia", bounty: 3000000000),
    Character(name: "Roronoa Zoro", image:"https://cdn.shopify.com/s/files/1/0755/5068/7558/files/roronoa-zoro-one-piece_8a066929-7e9c-4577-a08d-438e1a2d458a.webp?v=1686739171", status: "Alive", pirate_crew: "Mugiwara", role: "Vice", bounty: 1111000000),
    Character(name: "Vinsmoke Sanji", image:"https://i.pinimg.com/736x/f0/aa/9d/f0aa9db141b89ca7e36008c7a20302fd.jpg", status: "Alive", pirate_crew: "Mugiwara", role: "Cook", bounty: 1032000000),

  ];
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
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (BuildContext context, index){
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: primaryColor,
                width: 2
              )
            ),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(characters[index].image),
                ),
              title: Text(characters[index].name),
              subtitle: Text(characters[index].pirate_crew),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: (){
                  setState(() {
                    characters.removeAt(index);
                    //characters.removeWhere((item)=>item.name == characters[index].name);

                  });
                },
              ),
              onTap: (){
                Navigator.push(
                    context,
                  MaterialPageRoute (
                    builder: (BuildContext context) => IdCard(character: characters[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
