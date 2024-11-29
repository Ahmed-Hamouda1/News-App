import 'package:flutter/material.dart';
import 'package:news_app/widgets/all_gategory.dart';
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
        body: const Padding
        (
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView
          (
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                AllGategory(),
                SizedBox(height: 20,),
                all_news_card(),
              ],
            ),
          ),
        ),
    );
  }
}
