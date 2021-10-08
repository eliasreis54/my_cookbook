import 'package:flutter/material.dart';
import 'package:my_cookbook/models/recipe.dart';
import 'package:my_cookbook/ui/widgets/list_image.dart';
import 'package:my_cookbook/ui/widgets/list_recipe_step.dart';

class SingleRecipe extends StatelessWidget {
  final Recipe recipe;

  const SingleRecipe({
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipe.name,
          style: Theme.of(context).textTheme.headline6,
        ),
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: recipe.steps.map((step) {
                    return ListRecipeStep(recipeStep: step);
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
