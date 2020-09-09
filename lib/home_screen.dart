import 'package:animations/animations.dart';
import 'package:mrcurrency/reading_card_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/africa_screen.dart';
import 'Screens/asia_screen.dart';
import 'Screens/australia_screen.dart';
import 'Screens/europe_screen.dart';
import 'Screens/north_screen.dart';
import 'Screens/south_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ContainerTransitionType _transitionType = ContainerTransitionType.fade;
    const c = Color(0xffFFFFFF);
    const s = Color(0xffE211EC);
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: c,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity, // infinite
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * .07),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.display1,
                      children: [
                        TextSpan(
                            text: "Choose your\n",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Continent",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: s)),
                        TextSpan(
                            text: "\nfor viewing currency",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 25,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: _CustomAnimation(
                                s: AfricaScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: 'assets/images/africa.png',
                                    title: "Africa",
                                    color: '0xffE211EC',
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
                                    image: "assets/images/asia.png",
                                    title: "Asia",
                                  );
                                },
                              ),
                            ),

                            SizedBox(width: 30),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: _CustomAnimation(
                                s: AustraliaScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: "assets/images/australia.png",
                                    title: "Australia",
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: _CustomAnimation(
                                s: EuropeScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: "assets/images/europe.png",
                                    title: "Europe",
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 30),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: _CustomAnimation(
                                s: NorthScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: "assets/images/north.png",
                                    title: "North America",
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: _CustomAnimation(
                                s: SouthScreen(),
                                transitionType: _transitionType,
                                closedBuilder: (BuildContext _,
                                    VoidCallback openContainer) {
                                  return ReadingListCard(
                                    openContainer: openContainer,
                                    image: "assets/images/south.png",
                                    title: "South America",
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 30),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
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
      transitionDuration: Duration(milliseconds: 500),//1000
      tappable: true,
      closedColor: Colors.white,
      closedShape: const RoundedRectangleBorder(),
      closedElevation: 0.0,
      closedBuilder: closedBuilder,
    );
  }
}
