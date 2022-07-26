import 'package:flutter/material.dart';
import 'package:food_app/category_item_list.dart';
import 'package:food_app/widgets/category_item.dart';
import 'package:food_app/widgets/drawer_widget.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(title: const Text("Food App")),
      body: GridView(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: DUMMY_DATA.map(
          (catData){
            print(catData.id);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CategoryItem(color: catData.color, title: catData.title,id:catData.id),
            );
            
          }
          
        ).toList()),
    );
  }
}