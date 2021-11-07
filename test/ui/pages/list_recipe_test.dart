import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_cookbook/dummy_data/recipe.dart';
import 'package:my_cookbook/ui/pages/list_recipe.dart';
import 'package:my_cookbook/ui/pages/single_recipe.dart';

void main() {
  Future<void> _pumpWidget(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ListRecipe(),
      ),
    );
  }

  testWidgets(
      'Should navigate to single recipe'
      ' when tap in one recipe', (WidgetTester tester) async {
    await _pumpWidget(tester);

    expect(find.text('My cookbook list'), findsOneWidget);

    expect(find.byType(ListView), findsOneWidget);

    await tester.tap(find.text(DUMMY_DATA[0].name));

    await tester.pumpAndSettle();

    expect(find.byType(SingleRecipe), findsOneWidget);
  });
}
