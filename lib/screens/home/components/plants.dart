import 'package:flutter/material.dart';
import 'package:plantapp/screens/section/section_page.dart';

import '../../../constants.dart';

class PlantsType extends StatelessWidget {
  const PlantsType({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding+8.0,vertical: 8.0),
           child: Text(
                "Plants",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
         ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              FeaturePlantCard(
                image: "assets/images/non_flowering_plant.jpg",
                name: "Non Flowering",
                press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                             builder: (context) => SectionScreen(
                             ),
                          )), 
              ),
              FeaturePlantCard(
                image: "assets/images/flower_plant.jpg",
                name: "Flowering",
                press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                             builder: (context) => SectionScreen(
                             ),
                          )),             
                           ),
              FeaturePlantCard(
                image: "assets/images/tree_plant.jpg",
                name: "Tree",
                press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                             builder: (context) => SectionScreen(
                             ),
                          )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
    this.name,
    this.press,
  }) : super(key: key);
  final String image;
  final String name;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.4,
        height: size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Align(alignment: Alignment.center, child: Text(
                name,
                style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                  color:  Colors.black,
                )
              ),
      ),
    )
    );
  }
}
