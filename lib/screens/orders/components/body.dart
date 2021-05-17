import 'package:flutter/material.dart';
import 'package:plantapp/model/Order.dart';
import 'package:plantapp/screens/orders/components/details.dart';
import 'package:plantapp/screens/orders/components/item_card.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: Text(
              "My Orders",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: orders.length,
              
              itemBuilder: (context, index) => ItemCard(
                    order: orders[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                            order: orders[index],
                          ),
                        )),
                  )),
        ]),
      ],
    );
  }
}
