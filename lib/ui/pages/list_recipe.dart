import 'package:flutter/material.dart';
import 'package:my_cookbook/dummy_data/recipe.dart';
import 'package:my_cookbook/ui/pages/single_recipe.dart';
import 'package:my_cookbook/ui/widgets/bottom_shadow.dart';

class ListRecipe extends StatelessWidget {
  const ListRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My cookbook list'),
      ),
      body: ListView.builder(
        itemCount: DUMMY_DATA.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SingleRecipe(recipe: DUMMY_DATA[index]),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: [
                  Hero(
                    tag: DUMMY_DATA[index].name,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        DUMMY_DATA[index].images.first,
                        fit: BoxFit.contain,
                        scale: 0.5,
                      ),
                    ),
                  ),
                  BottomShadow(),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        DUMMY_DATA[index].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
