import 'package:flutter/material.dart';
import 'package:my_cookbook/models/recipe.dart';

class SingleRecipe extends StatelessWidget {
  final Recipe recipe;

  const SingleRecipe({
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Column(
        children: [
          Hero(
            tag: recipe.name,
            child: ClipRRect(
              child: Image.network(recipe.images.first),
            ),
          ),
        ],
      ),
    );
  }
}
