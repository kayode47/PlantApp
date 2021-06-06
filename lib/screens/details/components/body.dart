import 'package:flutter/material.dart';
import 'package:plantapp/model/Plant.dart';
import 'package:plantapp/screens/cart/cart.dart';
import 'package:plantapp/screens/details/components/title_and_price.dart';

import '../../../constants.dart';
import 'counter_with_fav_btn.dart';
import 'image_icon.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    this.plant,
  }) : super(key: key);
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CounterWithFavBtn(),
          ),
          TitleAndPrice(
            title: plant.title,
            country: "Russia",
            price: plant.price,
            plant: plant,
          ),
          SizedBox(height: kDefaultPadding),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kPrimaryColor)),
                  onPressed: () {
                    carts.add(plant);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
                    child: Text("Add TO Cart",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          decorationColor: Colors.lightGreen,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kPrimaryColor)),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          //   Row(
          //     children: <Widget>[
          //       SizedBox(
          //         width: size.width / 2,
          //         height: 54,
          //         child: FlatButton(
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(20),
          //             ),
          //           ),
          //           color: kPrimaryColor,
          //           onPressed: () {},
          //           child: Text(
          //             "Buy Now",
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 16,
          //             ),
          //           ),
          //         ),
          //       ),
          //       Expanded(
          //         child: FlatButton(
          //           onPressed: () {},
          //           child: Text("Description"),
          //         ),
          //       ),
          //     ],
          //   ),
        ],
      ),
    );
  }
}
