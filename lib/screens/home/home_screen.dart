import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/components/my_bottom_nav_bar.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
                  body: Body(),
                  bottomNavigationBar: MyBottomNavBar(),
                );
              }

        AppBar buildAppbar() {
          return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      
    );
        }
      
      }