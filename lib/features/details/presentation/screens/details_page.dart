
import 'package:flutter/material.dart';
import 'anime_details.dart';
import '../widgets/custom_nav.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimeDetails(),
      bottomNavigationBar: CustomNav(),
    );
  }
}