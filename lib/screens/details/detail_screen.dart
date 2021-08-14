import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/model/Plant.dart';
import 'package:plantapp/screens/details/components/body.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key key,
    this.plant,
  }) : super(key: key);
  final Plant plant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(
        plant: plant,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
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
        // Stack(
        //   children: [
        //     Container(
        //       child: IconButton(
        //         icon: SvgPicture.asset(
        //           "assets/icons/cart.svg",
        //           // By default our  icon color is white
        //           color: kTextColor,
        //         ),
        //         onPressed: () {},
        //       ),
        //     ),
        carts.length == 0
            ? IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/cart.svg",
                  // By default our  icon color is white
                  color: kTextColor,
                ),
                onPressed: () {},
              )
            : Badge(
                badgeContent: Text('${carts.length}'),
                position: BadgePosition.topEnd(top: 5, end: 5),
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/cart.svg",
                    // By default our  icon color is white
                    color: kTextColor,
                  ),
                  onPressed: () {},
                ),
              ),
        //   ],
        // ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
