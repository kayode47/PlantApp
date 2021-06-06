import 'package:flutter/material.dart';
import 'package:plantapp/model/Plant.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    // this.plant,
  }) : super(key: key);
  // final Plant plant;
  // final Plant cart;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: carts.length,
          itemBuilder: (context, index) => Column(children: [
                ListTile(
                  title: Text('${carts[index].title}'),
                  subtitle: Text('${carts[index].price}'),
                  trailing: CircleAvatar(
                    backgroundImage: AssetImage(
                        "${carts[index].image1}"), // no matter how big it is, it won't overflow
                  ),
                  onTap: () => print('Tapped on Row ${carts[index].title}'),
                ),
                Divider(color: Colors.black)
              ])),
    );
  }
}
