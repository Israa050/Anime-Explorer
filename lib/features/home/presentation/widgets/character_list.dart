
import 'package:flutter/material.dart';
import 'package:task_one_figma/features/home/data/models/character.dart';
import 'package:task_one_figma/features/home/presentation/widgets/character_avatar.dart';

class CharacterList extends StatelessWidget {
  List<Character> characters =[
    Character(1, 'assets/images/gon.png','Gon Freecss', 'Hunter x Hunter'),
    Character(2, 'assets/images/naruto.png','Naruto Uzumaki', 'Naruto'),
    Character(3, 'assets/images/luffy.png','Luffy', 'One Piece'),
    Character(4, 'assets/images/conan.jpg','Conan Edogawa', 'Detective Conan'),
    Character(4, 'assets/images/goku.jpg','Goku', 'Dragon Ball'),
  ];

   CharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: characters.length,
      itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(left: 20,),
        child: CharacterAvatar(character: characters[index],),
      );
    });
  }
}