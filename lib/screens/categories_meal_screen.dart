import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class CategoriesMealScreen extends StatelessWidget {
  static const routeName = "/categories";
  final List<Meal> meals;

  CategoriesMealScreen(this.meals);
  /* final String categoryId;
  final String categoryTitle;

  CategoriesMealScreen(this.categoryId, this.categoryTitle); */

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = args["title"];
    final categoryId = args["id"];
    final filteredMeals =
        meals.where((meal) => meal.categories.contains(categoryId)).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => MealItem(
            id: filteredMeals[index].id,
            title: filteredMeals[index].title,
            imageUrl: filteredMeals[index].imageUrl,
            affordability: filteredMeals[index].affordability,
            complexity: filteredMeals[index].complexity,
            duration: filteredMeals[index].duration,
          ),
          itemCount: filteredMeals.length,
        ));
  }
}
