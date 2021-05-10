import 'package:flutter/material.dart';
import 'package:plantapp/model/Plant.dart';
import 'package:plantapp/screens/details/detail_screen.dart';


import '../../../constants.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Flowering Plants",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
                itemCount: plants.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      plant: plants[index],
                      press: () {},
                      // => Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //        builder: (context) => DetailsScreen(
                      //          plant: plants[index],
                      //        ),
                      //     )),
                    
                    )),
          ),
        ),
      ],
    );
  }
}
