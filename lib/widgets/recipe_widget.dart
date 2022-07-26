import 'package:flutter/material.dart';


class RecipeWidget extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  RecipeWidget({this.imageUrl,this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){},
      child: Card(
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
                imageUrl!),
              ),
              
              Positioned(
                bottom: 10,
                left: 1,
                child: Container(
                  color: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title!,style: const TextStyle(color: Colors.white,fontSize: 30),),
                  )))
            ],
          )
        ]),
      ),
    );
  }
}