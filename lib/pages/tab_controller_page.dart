import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/pages/favourite_page.dart';
import 'package:food_app/pages/home_screen.dart';

class BottomNavigationTab extends StatefulWidget {
  const BottomNavigationTab({Key? key}) : super(key: key);

  @override
  State<BottomNavigationTab> createState() => _BottomNavigationTabState();
}

class _BottomNavigationTabState extends State<BottomNavigationTab> {

  final _pages = [
      const  HomePage(),
    const FavouritePage(),
 
  ];

  int _selectedPageIndex = 0;

  void _selectIndex(index)
  {
   setState(() {
     _selectedPageIndex = index;
   });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedPageIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectIndex,
        currentIndex: _selectedPageIndex,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.category),label: "Categories"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite")
      ]),
    );
  }
}