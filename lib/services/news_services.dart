import 'package:dio/dio.dart';
import 'package:news_app/components/atricle_model.dart';


class NewsServices
{
  NewsServices({required this.request});
  String request;
  final dio=Dio();
  Future<List<AtricleModel>> getNews() async
  {
    try 
    {
      Response response =await dio.get(request);
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
    }  catch (e) 
          {
            return [];
          }
  }
  

}