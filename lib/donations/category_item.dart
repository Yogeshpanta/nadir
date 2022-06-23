
import 'package:flutter/material.dart';
import 'package:uzme/donations/category_meals_screen.dart';

class CategoryItem extends StatelessWidget{
  final String id;
  final String title;
  final Color color;

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_){
          return CategoryMealsScreen( id, title, );
        }));
  }
  CategoryItem(this.id, this.title, this.color);
  @override
  Widget build(BuildContext context){

    return InkWell(
      onTap: ()=> selectCategory(context),
      child:  Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(

          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color,],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(title, style: Theme.of(context).textTheme.subtitle1),
      ),
    );

  }
}