import 'package:flutter/material.dart';
import 'package:meals_app/screens/FiltersScreen.dart';
import 'package:meals_app/screens/categories_meal_screen.dart';
import 'package:meals_app/screens/meal_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'package:provider/provider.dart';
import 'providers/meals.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Meals>(create: (context) => Meals(),
          child: MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                body2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                  fontFamily: 'RobotoCondensed',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                title: TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold),
              ),
        ),
        home: TabsScreen(),
        routes: {
          CategoriesMealScreen.routeName: (ctx) =>
              CategoriesMealScreen(),
          MealScreen.routeName: (ctx) =>
              MealScreen(),
           FiltersScreen.routeName: (ctx) => FiltersScreen(),
        },
      ),
    );
  }
}
