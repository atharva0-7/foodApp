import 'package:flutter/material.dart';
import 'package:food_app/recipe_list.dart';
import 'recipe_page.dart';

class FilterPage extends StatefulWidget {
  final Function _filterData;
  final Map<String,bool> _currentFilter;
  FilterPage(this._filterData,this._currentFilter);
  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isVegan = false;
  bool isGlutenFree = false;
  bool isVegetarian =  false;


@override
  void initState() {
    isVegan = widget._currentFilter["vegan"]!;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            final _selectedFilter = {
            "vegan":isVegan
            };
              widget._filterData(_selectedFilter);
          }, icon: const Icon(Icons.save))
        ],
        title: const Text("Filter"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Text("Filter out your selection",style: TextStyle(
              fontSize: 30
            ),),
            const SizedBox(height: 40,),
            SwitchListTile(
              subtitle: const Text("Contains item vegan free"),
              title: const Text("Vegan"),
              value: isVegan, onChanged: (newValue){
                setState(() {
                  isVegan = newValue;
                });
              }),
               SwitchListTile(
              subtitle: const Text("Only include VEGETARIAN meals"),
              title: const Text("Vegetarian"),
              value: isVegetarian, onChanged: (newValue){
                setState(() {
                  isVegetarian = newValue;
                });
              }),
               SwitchListTile(
              subtitle: const Text("Only include gluten-free meals"),
              title: const Text("Gluten-Free"),
              value: isGlutenFree, onChanged: (newValue){
                setState(() {
                  isGlutenFree = newValue;
                });
              })
          ],
        ),
      ),
    );
  }
}