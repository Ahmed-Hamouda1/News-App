import 'package:dio/dio.dart';
import 'package:news_app/components/atricle_model.dart';

class NewsServices
{
   final dio=Dio();
  
  getNews() async
  {
    Response response =await dio.get("https://newsapi.org/v2/everything?q=bitcoin&apiKey=caaef9f17d154771879900a03bb8a3c9");
    Map<String,dynamic> jsonData=response.data;
    List<dynamic> articles =jsonData["articles"];
    List<AtricleModel> atriclesNews=[]; 
    for(var art in articles)
    {
      AtricleModel article=AtricleModel
      (
        image: art["urlToImage"],
        title: art["title"],
        subTitle: art["description"]
      );
      atriclesNews.add(article);
    }

    
    
  }
  

}