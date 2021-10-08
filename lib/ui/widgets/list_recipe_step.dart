import 'package:flutter/material.dart';
import 'package:my_cookbook/models/recipe_step.dart';

class ListRecipeStep extends StatelessWidget {
  final RecipeStep recipeStep;
  const ListRecipeStep({
    required this.recipeStep,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Text(
                recipeStep.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ...recipeStep.tasks.map((task) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Divider(),
              ],
            ),
          );
        }).toList(),
      ],
    );
  }
}
