import 'package:flutter/material.dart';
import 'package:plantapp/screens/home/components/plants.dart';
import 'package:plantapp/screens/home/components/recomend_plants.dart';
import 'package:plantapp/screens/section/section_page.dart';

import '../../../constants.dart';
import 'carousel.dart';
import 'featurred_plan.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_bttn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          // SizedBox(
          // height: kDefaultPadding*3,
          // ),
          CarouselPage(),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: TitleWithMoreBtn(title: "Recomended", press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SectionScreen(),
                ),
              );}),
          ),
          RecomendsPlants(),
          PlantsType(),
          SizedBox(height: kDefaultPadding),
          TitleWithMoreBtn(title: "Featured", press: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SectionScreen(),
                ),
              );}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}