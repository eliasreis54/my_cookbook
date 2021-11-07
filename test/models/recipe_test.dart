import 'package:flutter_test/flutter_test.dart';
import 'package:my_cookbook/models/recipe.dart';

void main() {
  final recipe = Recipe(name: 'name', description: 'description', steps: []);

  test('Should copy Recipe when use copyWith', () {
    final name = 'copy name';
    final description = 'description copy';

    final recipeCopy = recipe.copyWith(
      name: name,
      description: description,
    );

    expect(recipeCopy.name, name);
    expect(recipeCopy.description, description);
  });
}
