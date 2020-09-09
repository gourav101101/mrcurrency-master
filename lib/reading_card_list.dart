import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:mrcurrency/consttants.dart';
import 'package:flutter/material.dart';

import 'consttants.dart';

class ReadingListCard extends StatelessWidget {
  final VoidCallback openContainer;
  final String image;
  final String title;
  final Function pressDetails;
  final String color;

  const ReadingListCard({
    Key key,
    this.openContainer,
    this.image,
    this.title,
    this.pressDetails,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _InkWellOverlay(
      openContainer: openContainer,
      child: Container(
        margin: EdgeInsets.only(left: 24, bottom: 35, right: 2),
        width: 172,
        height: 185, //185
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 1,
              left: 1,
              right: 1,
              child: Container(
                height: 141, //141
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 5,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              image,
              width: 160,
            ),
            Positioned(
              top: 105,
              bottom: 8,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                //color: Colors.lightGreen,
                //height: 75,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              text: TextSpan(
                                style: TextStyle(color: kBlackColor),
                                children: [
                                  TextSpan(
                                    text: "$title\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InkWellOverlay extends StatelessWidget {
  const _InkWellOverlay({
    this.openContainer,
    this.width,
    this.height,
    this.child,
  });

  final VoidCallback openContainer;
  final double width; // 172
  final double height; // 185
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: InkResponse(
        child: child,
        onTap: openContainer,
      ),
    );
  }
}
