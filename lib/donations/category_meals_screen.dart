
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget{
  // const CategoryMealsScreen({Key? key,
  //   required this.categoryid,
  //   required this.categorytitle}) : super(key: key);
  final String categoryid;
  final String categorytitle;
   CategoryMealsScreen(
      this.categoryid,
      this.categorytitle,
      );

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title:  Text(categorytitle),
      ),
      body: const Center(
        child: Text('Which one you like'),
      ),
    );
  }
}