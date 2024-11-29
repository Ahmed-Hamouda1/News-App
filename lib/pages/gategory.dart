import 'package:flutter/material.dart';
import 'package:news_app/widgets/all_news_card.dart';

class GategoryPage extends StatelessWidget 
{
  String title;
  GategoryPage({super.key,required this.title});

  @override
  Widget build(BuildContext context) 
  {

    return Scaffold
    (
      appBar: AppBar(title: Text(title),),
      body: SingleChildScrollView
      (
        child: Padding
        (
          padding: const EdgeInsets.all(8.0),
          child: all_news_card(gategory: title,),
        )
      ),
    );
  }
}