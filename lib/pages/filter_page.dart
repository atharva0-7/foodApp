import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isVegan = false;
  bool isGlutenFree = false;
  bool isVegetarian =  false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filter"),),
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