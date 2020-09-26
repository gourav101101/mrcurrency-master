// To parse this JSON data, do
//
//     final NewsModel = NewsModelFromJson(jsonString);

import 'dart:convert';

NewsModel NewsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String NewsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  NewsModel({
    this.currency,
    this.currencyIntro,
  });

  List<Currency> currency;
  List<CurrencyIntro> currencyIntro;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        currency: List<Currency>.from(
            json["currency"].map((x) => Currency.fromJson(x))),
        currencyIntro: List<CurrencyIntro>.from(
            json["currencyIntro"].map((x) => CurrencyIntro.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "currency": List<dynamic>.from(currency.map((x) => x.toJson())),
        "currencyIntro":
            List<dynamic>.from(currencyIntro.map((x) => x.toJson())),
      };
}

class Currency {
  Currency({
    this.title1,
    this.image1,
    this.screen1,
    this.title2,
    this.image2,
    this.screen2,
  });

  String title1;
  String image1;
  String screen1;
  String title2;
  String image2;
  String screen2;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        title1: json["title1"],
        image1: json["image1"],
        screen1: json["screen1"],
        title2: json["title2"],
        image2: json["image2"],
        screen2: json["screen2"],
      );

  Map<String, dynamic> toJson() => {
        "title1": title1,
        "image1": image1,
        "screen1": screen1,
        "title2": title2,
        "image2": image2,
        "screen2": screen2,
      };
}

class CurrencyIntro {
  CurrencyIntro({
    this.title1,
    this.title2,
    this.title3,
  });

  String title1;
  String title2;
  String title3;

  factory CurrencyIntro.fromJson(Map<String, dynamic> json) => CurrencyIntro(
        title1: json["title1"],
        title2: json["title2"],
        title3: json["title3"],
      );

  Map<String, dynamic> toJson() => {
        "title1": title1,
        "title2": title2,
        "title3": title3,
      };
}
