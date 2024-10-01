import 'package:flutter/material.dart';

void main() {
  runApp(const player_image_change());
}
List player=["https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSytEC5YOEVonnawl4sc-W9k7wO9NlW_HSfA&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQySu-cDpy7YRnWN8fp5n1m4xgHeCXWrAyT0A&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5Sk2hG-9gbPpON__LA-Zxetyl6KvhyyEwHg&s",
"https://i.pinimg.com/originals/48/37/af/4837af17a9f1bf260a2a1065332d9cd1.png"

];
int index= 0;

// ignore: camel_case_types
class player_image_change extends StatefulWidget {
  const player_image_change({super.key});

  @override
  State<player_image_change> createState() => _player_image_changeState();
}



// ignore: camel_case_types
class _player_image_changeState extends State<player_image_change> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: const Text("player_image_change"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Container(
            alignment: Alignment.center,
          
            Image: Image.network(player[index]),
            
            height: 300,
            width: 300,
            
          ),
          
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(index < player.length-1){
              index++;
            }

          },
          backgroundColor: Colors.blue,
          child: const Text("Next"),
          ),
      ),
    );
  }
}