
import 'package:flutter/material.dart';
import 'package:task_one_figma/features/home/data/models/anime.dart';
import 'package:task_one_figma/features/home/presentation/widgets/anime_card.dart';

class AnimeList extends StatelessWidget {


  List<Anime> animes = [
    Anime(1, 'assets/images/anime1.png', 'Detective Conana', 'Mystery'),
    Anime(1, 'assets/images/anime3.png', 'Hunter X Hunter', 'Adventure'),
    Anime(1, 'assets/images/anime2.png', 'Dragon Ball', 'Action'),
  ];

  AnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: animes.length,
    itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(right: 7,),
        child: AnimeCard(anime: animes[index]),
      );
    },);
  }
}