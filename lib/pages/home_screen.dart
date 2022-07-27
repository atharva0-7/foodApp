import 'package:flutter/material.dart';
import 'package:food_app/category_item_list.dart';
import 'package:food_app/widgets/category_item.dart';
import 'package:food_app/widgets/drawer_widget.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(title: const Text("Food App")),
      body: GridView(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: DUMMY_DATA.map(
          (catData){
            
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CategoryItem(color: catData.color, title: catData.title,id:catData.id),
            );
            
          }
          
        ).toList()),
    );
  }
}