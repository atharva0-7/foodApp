
import 'package:flutter/material.dart';
import 'package:food_app/pages/recipe_page.dart';


class CategoryItem extends StatelessWidget {
  final String? title;
  final Color? color;
  final String? id;

  CategoryItem({@required this.color,@required this.title,@required this.id});

  void _navigatePage(BuildContext context)
  {
    Navigator.push(context, MaterialPageRoute(builder: (_)=>RecipePage(title: title,id: id,)));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> _navigatePage(context),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.topRight,
            colors: [color!,Colors.white10,]),
          // border: Border.all(),
          borderRadius: BorderRadius.circular(10)
        ),
        padding: const EdgeInsets.all(10),
        
        child: Text(title!),
      ),
    );
  }
}