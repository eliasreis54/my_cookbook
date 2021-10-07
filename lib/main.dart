import 'package:flutter/material.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: ListRecipe(),
    );
  }
}
