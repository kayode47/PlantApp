import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'icon_card_black.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0,),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor,
        ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20,20,0,20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$title\n",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: country,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0)),
                          color: kTextColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "\$$price",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        width: size.width * 0.7,
                        child: Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: Text(
                            longtext,
                            textWidthBasis: TextWidthBasis.longestLine,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.deepPurple,
                              decorationColor: Colors.deepPurpleAccent,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                            ),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 3,
                ),
                SizedBox(
                    child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 185.0,
                            width: size.width * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    IconCardBlack(icon: "assets/icons/sun.svg"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Add TO Cart",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.deepPurple,
                                            decorationColor:
                                                Colors.deepPurpleAccent,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    IconCardBlack(
                                        icon: "assets/icons/icon_2.svg"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Add TO Cart",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.deepPurple,
                                            decorationColor:
                                                Colors.deepPurpleAccent,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    IconCardBlack(
                                        icon: "assets/icons/icon_3.svg"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Add TO Cart",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.deepPurple,
                                            decorationColor:
                                                Colors.deepPurpleAccent,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    IconCardBlack(
                                        icon: "assets/icons/icon_4.svg"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Add TO Cart",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.deepPurple,
                                            decorationColor:
                                                Colors.deepPurpleAccent,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: kDefaultPadding,
                          top: kDefaultPadding / 2,
                          bottom: kDefaultPadding / 2,
                          right: 0,
                        ),
                        width: size.width * 0.4,
                        height: 175,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(20)),
                            color: kBackgroundColor),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Care Level",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.deepPurple,
                                      decorationColor: Colors.deepPurpleAccent,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                          Icons.arrow_forward,
                          size: 50,
                          color: Colors.black,
                        ),
                                  ),
                            ],
                            
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(right:20.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20, top: 5, bottom: 5, right: 20),
                          child: Text("Add TO Cart",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                decorationColor: Colors.lightGreen,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
