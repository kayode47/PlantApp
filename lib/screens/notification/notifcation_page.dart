import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/model/Notificationy.dart';

import '../../constants.dart';

class NotificationPage extends StatefulWidget {
  Notificationy notificationy = Notificationy();
  NotificationPage({Key key, this.notificationy}) : super(key: key);
  @override
  _NotificationPageState createState() => _NotificationPageState(notificationy);
}

class _NotificationPageState extends State {
   Notificationy notificationy;
  _NotificationPageState(this.notificationy);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) => NotCard(
                notificationy: notificationys[index],
              )),
    );
  }
}

class NotCard extends StatelessWidget {
  const NotCard({
    Key key,
    @required this.notificationy,
  }) : super(key: key);

  final Notificationy notificationy;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Card(
            margin: EdgeInsets.all(2),
            elevation: 4,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('${notificationy.title}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text(
                              '${notificationy.note}',
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                          backgroundImage:
                              AssetImage("${notificationy.image}")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          // By default our  icon color is white
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          // By default our  icon color is white
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      SizedBox(width: kDefaultPadding / 2)
    ],
  );
}
