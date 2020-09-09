import 'package:mrcurrency/consttants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpansionTileExample extends StatefulWidget {
  final String name;
  final String nickname;
  final String symbol;
  final String coins;
  final String banknotes;
  final Color color;
  final String code;
  final String leading;

  const ExpansionTileExample({
    Key key,
    this.name,
    this.nickname,
    this.symbol,
    this.coins,
    this.banknotes,
    this.color,
    this.code,
    this.leading,
  }) : super(key: key);
  @override
  _ExpansionTileExampleState createState() => _ExpansionTileExampleState(
        name: this.name,
        nickname: this.nickname,
        symbol: this.symbol,
        coins: this.coins,
        banknotes: this.banknotes,
        color: this.color,
        lead: this.code,
        leading: this.leading
      );
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  final String name;
  final String nickname;
  final String symbol;
  final String coins;
  final String banknotes;
  final Color color;
  final String lead;
  final String leading;

  _ExpansionTileExampleState({
    Key key,
    this.name,
    this.nickname,
    this.symbol,
    this.coins,
    this.banknotes,
    this.color,
    this.lead,
    this.leading,
  }) : super();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        margin: EdgeInsets.only(bottom: 12,top: 5),
        width: size.width - 48,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(38.5),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 33,
              color: Color(0xFFD3D3D3).withOpacity(.84),
            ),
          ],
        ),
          child: ExpansionTile(
            leading:Text('$leading',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            backgroundColor: white,
            title: Text(
              "$name",
              style: TextStyle(fontWeight: FontWeight.bold, color: color),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: 'Code :',
                  style:
                      TextStyle(color: color, fontWeight: FontWeight.bold,
                      fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' $lead',
                        style: TextStyle(
                            color: black, fontWeight: FontWeight.w400))
                  ]),
            ),
            children: <Widget>[
              Divider(
                thickness: 1,
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: color, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: ': $nickname',
                          style:
                              TextStyle(fontWeight: FontWeight.w400, color: black)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  textWidthBasis: TextWidthBasis.parent,
                  text: TextSpan(
                    text: 'Symbol',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: color, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: ': $symbol',
                          style:
                              TextStyle(fontWeight: FontWeight.w400, color: black)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Coins',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: color, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: ': $coins',
                          style:
                              TextStyle(fontWeight: FontWeight.w400, color: black)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'BankNotes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: color, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: ': $banknotes',
                          style:
                              TextStyle(fontWeight: FontWeight.w400, color: black)),
                    ],
                  ),
                ),
              ),
            ],
          ),
    );
  }
}