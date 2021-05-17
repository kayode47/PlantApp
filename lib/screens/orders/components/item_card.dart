import 'package:flutter/material.dart';
import 'package:plantapp/model/Order.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Order order;
  final Function press;
  const ItemCard({
    Key key,
    this.order,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Column(
          children: [
            Container(
              child: Card(
                margin: EdgeInsets.all(6),
                elevation: 4,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('${order.orderID}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 4),
                              Text(
                                '${order.time}',
                              ),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                              backgroundImage: AssetImage("${order.image}")),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          children: [
                            Text('${order.status}'),
                            Spacer(),
                            Text('${order.orderID}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
