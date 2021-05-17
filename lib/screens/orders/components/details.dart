import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/model/Order.dart';
import 'package:plantapp/model/Plant.dart';
// import 'package:plantapp/screens/orders/components/body.dart';

class Details extends StatefulWidget {
  final Order order;
  const Details({Key key, this.order}) : super(key: key);
  @override
  _DetailsState createState() {
    return _DetailsState(order);
  }
}

// class OrderDetailScreen extends StatelessWidget {
//   final Order order;

//   const OrderDetailScreen({Key key, this.order}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(),
//       body: Details(order: order),
//     );
//   }

// }

class _DetailsState extends State {
  bool _isVisible = true;
  final Order order;
  _DetailsState(this.order);
    AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${order.orderID}',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${order.time}',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        '${order.status}',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: order.orderList.length,
                itemBuilder: (context, index) => Column(children: [
                      ListTile(
                        title: Text('${order.orderList[index].title}'),
                        subtitle: Text('${order.orderList[index].price}'),
                        trailing: CircleAvatar(
                          backgroundImage: AssetImage(
                              "${order.orderList[index].image1}"), // no matter how big it is, it won't overflow
                        ),
                        onTap: () => print('Tapped on Row ${order.orderID}'),
                      ),
                      Divider(color: Colors.black)
                    ])),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
            child: Row(
              children: [
                Text(
                  'Track Order',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Visibility(
                  visible: !_isVisible,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {
                      showTrack();
                    },
                  ),
                  replacement: IconButton(
                    icon: Icon(Icons.keyboard_arrow_up),
                    onPressed: () {
                      showTrack();
                    },
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: _isVisible,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: SvgPicture.asset(
                          'assets/icons/user-icon.svg',
                        ),
                        // Icon( Icons.ac_unit),
                        backgroundColor: Colors.white,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order Placed',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text('We have received your order on 20-Dec-2019')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: SvgPicture.asset(
                          'assets/icons/user-icon.svg',
                        ),
                        // Icon( Icons.ac_unit),
                        backgroundColor: Colors.white,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order Placed',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text('We have received your order on 20-Dec-2019')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: SvgPicture.asset(
                          'assets/icons/user-icon.svg',
                        ),
                        // Icon( Icons.ac_unit),
                        backgroundColor: Colors.white,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order Placed',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text('We have received your order on 20-Dec-2019')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: SvgPicture.asset(
                          'assets/icons/user-icon.svg',
                        ),
                        // Icon( Icons.ac_unit),
                        backgroundColor: Colors.white,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order Placed',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text('We have received your order on 20-Dec-2019')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: SvgPicture.asset(
                          'assets/icons/user-icon.svg',
                        ),
                        // Icon( Icons.ac_unit),
                        backgroundColor: Colors.white,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order Placed',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text('We have received your order on 20-Dec-2019')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              
              
              ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void showTrack() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
}
