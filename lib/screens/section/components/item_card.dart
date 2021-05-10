import 'package:flutter/material.dart';
import 'package:plantapp/model/Plant.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Plant plant;
  final Function press;
  const ItemCard({
    Key key,
    this.plant,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width*0.4,

              padding: EdgeInsets.all(kDefaultPadding*0.5),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${plant.id}",
                child: Image.asset(plant.image1,fit: BoxFit.fill,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              // products is out demo list
              plant.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${plant.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
