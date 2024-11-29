
import 'package:flutter/material.dart';
import 'package:news_app/components/atricle_model.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/services/news_services.dart';

class all_news_card extends StatefulWidget 
{
  const all_news_card({super.key,});

  @override
  State<all_news_card> createState() => _all_news_cardState();
}

class _all_news_cardState extends State<all_news_card> 
{
  List<AtricleModel> articles=[];
  @override
  void initState() 
  {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getNews();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      children: List.generate
      (
        articles.length,
        (index) => NewsCard(atricleModel: articles[index]),
      ),
    );
  }
}

