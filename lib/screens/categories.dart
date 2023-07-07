import 'package:new_meals_app/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:new_meals_app/widgets/category_grid_items.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding:const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 3 /2 ),
              children: [
                ...availableCategories.map((e) =>CategoryGridItems(category:e)).toList(),
                //OR 
                //for(final category in availableCategories)
                //CategoryGridItems(category: category),
              ]),
    );
  }
}
