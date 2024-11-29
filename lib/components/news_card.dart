import 'package:flutter/material.dart';
import 'package:news_app/components/atricle_model.dart';

class NewsCard extends StatelessWidget 
{
  NewsCard({super.key,required this.atricleModel});
  final AtricleModel atricleModel;

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.only(bottom:25),
      child: Column
      (
        children: 
        [
          ClipRRect
          (
            borderRadius: BorderRadius.circular(15),
            child: Image.network
            (
              atricleModel.image??"https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/082691f2eca7c4f826e37df2c690b70c.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) 
              {
                 return const Icon(Icons.broken_image, size: 50); // تظهر أيقونة بدل الصورة
              },
            ),
          ),
          Text
          (
            atricleModel.title??"",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle
            (
              fontSize: 18, 
              fontWeight: FontWeight.bold
            ),
          ),
           Text
          (
            atricleModel.subTitle??"",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle
            (
              fontSize: 14, 
              color: Colors.grey
            ),
          )
        ],
      ),
    );
  }
}