import 'package:animations/animations.dart';
import 'package:flutter/rendering.dart';
import 'package:loading/indicator/ball_spin_fade_loader_indicator.dart';
import 'package:loading/indicator/pacman_indicator.dart';
import 'package:loading/loading.dart';
import 'package:mrcurrency/consttants.dart';
import 'package:mrcurrency/demo.dart';
import 'package:mrcurrency/reading_card_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Screens/africa_screen.dart';
import 'Screens/asia_screen.dart';
import 'Screens/australia_screen.dart';
import 'Screens/europe_screen.dart';
import 'Screens/north_screen.dart';
import 'Screens/south_screen.dart';
import 'api_manager.dart';
import 'newsInfo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<NewsModel> _newsModel;

  @override
  void initState() {
    _newsModel = API_Manager().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ContainerTransitionType _transitionType = ContainerTransitionType.fade;
    const c = Color(0xffFFFFFF);
    const s = Color(0xffE211EC);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          child: FutureBuilder<NewsModel>(
              future: _newsModel,
              builder: (context, snapshot) {
                print(snapshot.data);
                if (snapshot.data == null) {
                  return Center(
                      child: Loading(
                    indicator: BallSpinFadeLoaderIndicator(),
                    size: 100.0,
                    color: Colors.black,
                  ));
                  //return Container(child: Center(child: Text("Loading...")));
                } else {
                  return CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            var currencyIntro =
                                snapshot.data.currencyIntro[index];
                            // Second JSON
                            if (snapshot.data == null)
                              return Center(child: CircularProgressIndicator());
                            return Container(
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: size.height * .07),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: RichText(
                                          text: TextSpan(
                                            style: Theme.of(context)
                                                .textTheme
                                                .display1,
                                            children: [
                                              TextSpan(
                                                  text: currencyIntro.title1 +
                                                      "\n",
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: currencyIntro.title2,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: s)),
                                              TextSpan(
                                                  text: "\n" +
                                                      currencyIntro.title3,
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontSize: 25,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30),
                                    ]));
                          },
                          childCount: snapshot.data.currencyIntro.length,
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            // First JSON
                            var currenci = snapshot.data.currency[index];
                            return Container(
                                child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: _CustomAnimation(
                                    s: Demo(),
                                    transitionType: _transitionType,
                                    closedBuilder: (BuildContext _,
                                        VoidCallback openContainer) {
                                      return ReadingListCard(
                                        openContainer: openContainer,
                                        image: currenci.image1,
                                        title: currenci.title1,
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: _CustomAnimation(
                                    s: AsiaScreen(),
                                    transitionType: _transitionType,
                                    closedBuilder: (BuildContext _,
                                        VoidCallback openContainer) {
                                      return ReadingListCard(
                                        openContainer: openContainer,
                                        image: currenci.image2,
                                        title: currenci.title2,
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(width: 30),
                              ],
                            ));
                          },
                          childCount: snapshot.data.currency.length,
                        ),
                      ),
                    ],
                  );
                }
              })),
    );
  }
}

class User {
  final String title1;
  final String image1;
  final String screen1;

  final String title2;
  final String image2;
  final String screen2;

  User(this.title1, this.image1, this.screen1, this.title2, this.image2,
      this.screen2);
}

class _CustomAnimation extends StatelessWidget {
  const _CustomAnimation({
    this.s,
    this.closedBuilder,
    this.transitionType,
  });
  final Widget s;
  final OpenContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: transitionType,
      openBuilder: (BuildContext _, VoidCallback openContainer) {
        return s;
      },
      transitionDuration: Duration(milliseconds: 500), //1000
      tappable: true,
      closedColor: Colors.white,
      closedShape: const RoundedRectangleBorder(),
      closedElevation: 0.0,
      closedBuilder: closedBuilder,
    );
  }
}

/* return ListView.builder(
                    
                      itemCount: snapshot.data.currency.length,
                      itemBuilder: (BuildContext context, int index) {
                        var currenci = snapshot.data.currency[index];
                        return Container(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: _CustomAnimation(
                                s: AfricaScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: currenci.image1,
                                    title: currenci.title1,
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: _CustomAnimation(
                                s: AsiaScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: currenci.image2,
                                    title: currenci.title2,
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 30),
                          ],
                        ));
                      }); */

/* class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<NewsModel> _newsModel;

  @override
  void initState() {
    _newsModel = API_Manager().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ContainerTransitionType _transitionType = ContainerTransitionType.fade;
    const c = Color(0xffFFFFFF);
    const s = Color(0xffE211EC);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          child: FutureBuilder<NewsModel>(
              future: _newsModel,
              builder: (context, snapshot) {
                print(snapshot.data);
                if (snapshot.data == null) {
                  return Container(child: Center(child: Text("Loading...")));
                } else {
                  return ListView.builder(
                      //itemCount: snapshot.data.length,
                      itemCount: snapshot.data.currency.length,
                      itemBuilder: (BuildContext context, int index) {
                        var currenci = snapshot.data.currency[index];
                        return Container(
                            child: Row(
                          children: <Widget>[
                            Expanded(
                              child: _CustomAnimation(
                                s: AfricaScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: currenci.image1,
                                    title: currenci.title1,
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: _CustomAnimation(
                                s: AsiaScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: currenci.image2,
                                    title: currenci.title2,
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 30),
                          ],
                        ));
                      });
                }
              })),
    );
  }
} */
