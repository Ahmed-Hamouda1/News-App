import 'package:dio/dio.dart';
import 'package:news_app/components/atricle_model.dart';
import 'package:news_app/private.dart';


class NewsServices
{
  final dio=Dio();
  Future<List<AtricleModel>> getNews() async
  {
    Response response =await dio.get("https://newsapi.org/v2/everything?q=bitcoin&apiKey=$apiKey");
    Map<String,dynamic> jsonData=response.data;// data
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
    return atriclesNews;
  }
  

}