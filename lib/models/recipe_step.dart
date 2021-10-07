class RecipeStep {
  final String name;
  final List<String> tasks;

  const RecipeStep({
    required this.name,
    this.tasks = const [],
  });
}
