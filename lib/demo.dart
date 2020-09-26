import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'expansiontileexample.dart';

class Demo extends StatelessWidget {
  final name;
  final nickname;
  final symbol;
  final coins;
  final banknotes;
  final Color color;
  final code;
  final leading;
  final String title;
  final String imageurl;

  Demo({
    Key key,
    this.name,
    this.nickname,
    this.symbol,
    this.coins,
    this.banknotes,
    this.color,
    this.code,
    this.leading,
    this.title,
    this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          elevation: 10,
          iconTheme: IconThemeData(color: Colors.white),
          pinned: true,
          floating: false,
          expandedHeight: 120.0,
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(title.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white)),
            centerTitle: true,
            background: Image.asset(
              imageurl,
              fit: BoxFit.none,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (index >= name.length) return null;

              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: ExpansionTileExample(
                          name: name[index],
                          color: color,
                          nickname: nickname[index],
                          symbol: symbol[index],
                          coins: coins[index],
                          banknotes: banknotes[index],
                          code: code[index],
                          leading: leading[index],
                        ))
                  ]);
            },
          ),
        )
      ],
    ));
  }
}

/* import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'expansiontileexample.dart';

class Demo extends StatelessWidget {
  final name;
  final nickname;
  final symbol;
  final coins;
  final banknotes;
  final Color color;
  final code;
  final leading;
  final String title;
  final String imageurl;

  Demo({
    Key key,
    this.name,
    this.nickname,
    this.symbol,
    this.coins,
    this.banknotes,
    this.color,
    this.code,
    this.leading,
    this.title,
    this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          elevation: 10,
          iconTheme: IconThemeData(color: Colors.white),
          pinned: true,
          floating: false,
          expandedHeight: 120.0,
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(title.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white)),
            centerTitle: true,
            background: Image.asset(
              imageurl,
              fit: BoxFit.none,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (index >= name.length) return null;

              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: ExpansionTileExample(
                          name: name[index],
                          color: color,
                          nickname: nickname[index],
                          symbol: symbol[index],
                          coins: coins[index],
                          banknotes: banknotes[index],
                          code: code[index],
                          leading: leading[index],
                        ))
                  ]);
            },
          ),
        )
      ],
    ));
  }
}
 */
