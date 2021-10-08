import 'package:flutter/material.dart';
import 'package:my_cookbook/theme/colors.dart';
import 'package:my_cookbook/ui/pages/list_recipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My cookbook',
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: CustomColors.secondaryColor,
        ),
        primaryIconTheme: IconThemeData(
          color: CustomColors.secondaryColor,
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        primaryColor: CustomColors.primaryColor,
        colorScheme: ColorScheme.light(
          primary: Color(0xFFFABC3C),
        ),
      ),
      home: ListRecipe(),
    );
  }
}
