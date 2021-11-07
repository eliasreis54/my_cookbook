import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_cookbook/models/recipe.dart';
import 'package:my_cookbook/ui/pages/single_recipe.dart';

void main() {
  final recipe = Recipe(
    name: 'name',
    description: 'description',
    steps: [],
    images: [
      'bolo_de_milho1.jpeg',
      'bolo_de_milho2.jpeg',
    ],
  );

  Future<void> _pumpWidget(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SingleRecipe(
          recipe: recipe,
        ),
      ),
    );
  }

  testWidgets('', (WidgetTester tester) async {
    await _pumpWidget(tester);

    expect(find.byType(SingleChildScrollView), findsOneWidget);
  });
}
