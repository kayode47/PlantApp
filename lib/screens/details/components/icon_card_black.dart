import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCardBlack extends StatelessWidget {
  const IconCardBlack({
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
      padding: EdgeInsets.all(kDefaultPadding / 4),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kBackgroundColor,
      
      ),
      child: SvgPicture.asset(icon,
      color: Colors.black,
      ),
    );
  }
}
