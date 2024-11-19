
import 'package:flutter/material.dart';
import 'package:news_app/components/gategory_card.dart';

class AllGategory extends StatelessWidget 
{
  const AllGategory({super.key,});

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      height: 100,
      child: ListView
      (
        scrollDirection: Axis.horizontal,
        children: 
        [
          GatrgoryCard(title: "Sport", image: "assets/sport.jpg"),
          GatrgoryCard(title: "Business", image: "assets/business.jpg"),
          GatrgoryCard(title: "Science", image: "assets/science.jpg"),
          GatrgoryCard(title: "Health", image: "assets/health.jpg"),
          GatrgoryCard(title: "Technology", image: "assets/technology.jpeg"),
          GatrgoryCard(title: "Entertaiment", image: "assets/entertaiment.jpg"),
          GatrgoryCard(title: "General", image: "assets/general.jpg")
        ],
      ),
    );
  }
}