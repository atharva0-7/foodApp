import 'package:flutter/material.dart';
import 'package:food_app/pages/filter_page.dart';


class DrawerWidget extends StatelessWidget {

void _navigateToFilterPage(BuildContext ctx)
{
  Navigator.push(ctx, MaterialPageRoute(builder: (_){
    return
     const FilterPage();
  }));
}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration:const BoxDecoration(color: Colors.blueGrey),
              child: const Center(child: Text("COOKING UP!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black87),)),
            ),
          const ListTile(
              title: Text("MEALS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
              leading: Icon(Icons.restaurant,size: 30,color: Colors.black87,),
            ),
            const Divider(),
              InkWell(
              onTap:()=> 
                _navigateToFilterPage(context),
              
              child: const  ListTile(
                title: Text("FILTER",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
                leading: Icon(Icons.settings,size: 30,color: Colors.black87,),
                    
              ),
            ),
                 const  Divider(),
        ],),
      ));
    
  }
}