import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget 
{
  const NewsCard({super.key});

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
            child: Image.asset
            (
              "assets/sport.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const Text
          (
            "Ahmed Hamouda Khiry This is My last Project in flutter course with tharwat samy in udemy platform this course good",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle
            (
              fontSize: 18, 
              fontWeight: FontWeight.bold
            ),
          ),
          const Text
          (
            "Ahmed Hamouda Khiry This is My last Project in flutter course with tharwat samy in udemy platform this course good",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle
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