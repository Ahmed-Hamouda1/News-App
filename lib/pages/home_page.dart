import 'package:flutter/material.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/widgets/all_gategory.dart';
import 'package:news_app/components/gategory_card.dart';
import 'package:news_app/widgets/all_news_card.dart';

class HomePage extends StatelessWidget 
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
        (
          //centerTitle: true,
          title: const Row
          (
            mainAxisAlignment : MainAxisAlignment.center,
            children: 
            [
              Text("News",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              Text("App",style: TextStyle(color: Colors.orange),),
            ],
          )
        ),
        body: all_news_card(),
    );
  }
}
