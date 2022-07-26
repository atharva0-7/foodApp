import "package:flutter/material.dart";
import 'package:food_app/pages/tab_controller_page.dart';
import './PAGES/home_screen.dart';
void main()
{
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context)
  {
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.blueGrey),
        primaryColor: Colors.black26),
      title: "Food app",
      home: const BottomNavigationTab(),
    );
  }
}