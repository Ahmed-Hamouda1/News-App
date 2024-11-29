
import 'package:flutter/material.dart';
import 'package:news_app/components/atricle_model.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/private.dart';
import 'package:news_app/services/news_services.dart';

class all_news_card extends StatefulWidget 
{
  String gategory;
  all_news_card({super.key,required this.gategory});

  @override
  State<all_news_card> createState() => _all_news_cardState();
}

class _all_news_cardState extends State<all_news_card> 
{
  bool isloading =true;

  List<AtricleModel> articles=[];
  @override
  void initState() 
  {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(request:"https://newsapi.org/v2/top-headlines?category=${widget.gategory}&apiKey=$apiKey").getNews();
    if(mounted)
    {
      setState(() {});
      isloading=false;
    }
  }

  @override
  Widget build(BuildContext context) 
  {
    return isloading? Center(child: CircularProgressIndicator()): 
    articles.length!=0?Column
    (
      children: List.generate
      (
        articles.length, 
        (index) => NewsCard(atricleModel: articles[index]),
      ),
    ):Center(child: Text("قد يكون هناك مشكله",style: TextStyle(fontSize: 40),));
    // return FutureBuilder
    // (
    //   future: NewsServices().getNews(), 
    //   builder: (context,snapshot)
    //   {
    //     snapshot.data;
    //     return NewsCard(atricleModel: articles[index]),
    //   }
    // );
    

  }

  
}


