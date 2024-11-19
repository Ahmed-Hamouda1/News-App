
import 'package:flutter/material.dart';
import 'package:news_app/components/news_card.dart';

class all_news_card extends StatelessWidget 
{
  const all_news_card({super.key,});

  @override
  Widget build(BuildContext context) 
  {
    return ListView.builder
    (
      itemCount: 10,
      itemBuilder: (context,index)
      {
        return NewsCard();
      }
    );
  }
}
