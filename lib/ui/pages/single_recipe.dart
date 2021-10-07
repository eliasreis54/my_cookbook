import 'package:flutter/material.dart';
import 'package:my_cookbook/models/recipe.dart';
import 'package:my_cookbook/ui/widgets/list_image.dart';

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
            child: ImageList(
              imageList: recipe.images,
            ),
          ),
          Expanded(
            child: null,
          ),
        ],
      ),
    );
  }
}
