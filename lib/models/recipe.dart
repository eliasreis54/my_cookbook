import 'package:my_cookbook/models/recipe_step.dart';

class Recipe {
  final String name;
  final String description;
  final List<String> images;
  final List<String> aditionalInfo;
  final List<RecipeStep> steps;

  const Recipe({
    required this.name,
    required this.description,
    this.images = const [],
    this.aditionalInfo = const [],
    required this.steps,
  });
}
