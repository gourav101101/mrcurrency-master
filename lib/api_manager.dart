import 'dart:convert';

import 'package:http/http.dart' as http;

import 'newsInfo.dart';

class Strings {
  static String news_url =
      'https://gourav512.github.io/shambho.github.io/currency.json';
}

// ignore: camel_case_types
class API_Manager {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel;

    try {
      var response = await client.get(Strings.news_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }
}
