
import 'package:flutter/material.dart';
import 'package:task_one_figma/features/details/presentation/screens/anime_details.dart';
import 'package:task_one_figma/features/details/presentation/widgets/custom_nav.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimeDetails(),
      bottomNavigationBar: CustomNav(),
    );
  }
}