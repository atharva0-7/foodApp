import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:food_app/models/recipe_modal.dart';
import 'package:food_app/widgets/recipe_widget.dart';
import '../recipe_list.dart';

class RecipePage extends StatelessWidget {
  final String? title;
  final  String? id;
  List<Recipe>? recipes;
  RecipePage({this.title,this.id}){
  recipes = recipeList.where((item){return item.category!.contains(id);}).toList();
  }
 
 


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body:ListView.builder(
        itemCount: recipes!.length,
        itemBuilder: (context,item){
          return RecipeWidget(imageUrl: recipes![item].imageUrl,title: recipes![item].title,);
      }));
  }
}