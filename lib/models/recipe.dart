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

  Recipe copyWith({
    String? name,
    String? description,
    List<String>? images,
    List<String>? aditionalInfo,
    List<RecipeStep>? steps,
  }) {
    return Recipe(
      name: name ?? this.name,
      description: description ?? this.description,
      images: images ?? this.images,
      aditionalInfo: aditionalInfo ?? this.aditionalInfo,
      steps: steps ?? this.steps,
    );
  }
}
