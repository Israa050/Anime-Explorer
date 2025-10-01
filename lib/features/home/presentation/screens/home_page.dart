import 'package:flutter/material.dart';
import 'package:task_one_figma/features/home/presentation/screens/anime_home.dart';
import 'package:task_one_figma/features/home/presentation/widgets/home_custom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimeHome(),
      bottomNavigationBar:HomeCustomNav()
    );
  }
}
