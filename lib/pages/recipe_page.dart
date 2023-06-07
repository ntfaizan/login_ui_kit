import 'package:flutter/material.dart';
import 'package:login_ui_kit/data/recipes_list.dart';
import 'package:login_ui_kit/widgets/home_card.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: recipesList.length,
        itemBuilder: (context, index) => HomeCard(
          recipe: recipesList[index],
        ),
      ),
    );
  }
}
