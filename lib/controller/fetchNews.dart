//https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=00e9bed3dc5e4229a937ad4ed362bed3
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:newzzz/model/newsArt.dart';


class FetchNews{

  static List sourcesID = [
    "abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",

  ];


  static Future<NewsArt> fetchNews() async{
  final _random = new Random();
  var sourceID = sourcesID[_random.nextInt(sourcesID.length)];
  print(sourceID);
   Response response = await get(Uri.parse(
     "https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=00e9bed3dc5e4229a937ad4ed362bed3"
   ));
   Map body_data = jsonDecode(response.body);
   List articles = body_data["articles"];
   print(articles);

   final _Newrandom = new Random();
   var myArticle = articles[_random.nextInt(articles.length)];
   print(myArticle);

  return NewsArt.fromAPItoApp(myArticle);
  }
}