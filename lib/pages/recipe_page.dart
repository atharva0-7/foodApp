import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:food_app/models/recipe_modal.dart';
import 'package:food_app/pages/filter_page.dart';
import 'package:food_app/widgets/recipe_widget.dart';
import '../recipe_list.dart';

class RecipePage extends StatefulWidget {
  final String? title;
  final  String? id;
  late List<Recipe> recipes;
  RecipePage({this.title,this.id}){
  recipes = recipeList.where((item){return item.category!.contains(id);}).toList();
  }

  @override
  State<RecipePage> createState() => _RecipePageState(recipes);
  
}

class _RecipePageState extends State<RecipePage> {
  List<Recipe>? availableData; 
  List<Recipe> recipes;
  _RecipePageState(this.recipes){
  
    availableData = recipes;

  }
  Map<String,bool>filteredList = {"vegan":false};


   void _filterData(Map<String,bool> receivedData)
   {
    setState(() {
      print(filteredList["vegan"]);
    filteredList = receivedData;
    // print(filteredList);
    availableData = widget.recipes.where((element) {
       if(filteredList["vegan"] == true && element.isVegan==false)
    {
      return false;
    }
    return true;
    }).toList();
    });
   }
  
  @override
  Widget build(BuildContext context) {
 
   void _navigateToFilterPage()
   {
    Navigator.push(context, MaterialPageRoute(builder: (_)=>FilterPage(_filterData,filteredList)));
   }
  //  print(availableData.length);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
          onPressed: _navigateToFilterPage,
            icon:const Icon(Icons.settings))
        ],
        title: Text(widget.title!)),
      body:ListView.builder(
        itemCount: availableData!.length,
        itemBuilder: (context,item){
          return RecipeWidget(imageUrl: availableData![item].imageUrl,title: availableData![item].title,);
      }));
  }
}