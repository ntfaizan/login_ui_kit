import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          children: [
            Image.network(
              'https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2019/07/ratatouille.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
