import 'package:flutter/material.dart';

class GatrgoryCard extends StatelessWidget 
{
  String title;
  String image;
  GatrgoryCard({super.key,required this.title,required this.image});

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      margin: EdgeInsets.only(right: 5),
      height: 100,
      width: 180,
      decoration: BoxDecoration
      (
        //color: Colors.red,
        image: DecorationImage
        (
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.colorDodge)
        ),
        borderRadius: BorderRadius.circular(20),

      ),
      child: Center
      (
        child: Text
        (
          title,
          style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
        )
      ),
    );
  }
}