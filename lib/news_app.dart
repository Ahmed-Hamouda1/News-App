import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';

class NewsApp extends StatelessWidget 
{
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold
      (
        body: HomePage(),
      ),
    );
  }
}