import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

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
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding,
                    childAspectRatio: 0.75,
                  ),
                  children: [
                    Card(
                      elevation: 3.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              child: SvgPicture.asset(
                                  'assets/icons/customer-service-1.svg'),
                            ),
                          ),
                          Text(
                            "Customer Care",
                            style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "Connect with a customer Representative",
                            style: Theme.of(context).textTheme.subtitle2.copyWith(
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: SvgPicture.asset(
                                'assets/icons/customer-service.svg'),
                          ),
                          Text(
                            "Customer Care",
                            style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "Connect with a customer Representative",
                            style: Theme.of(context).textTheme.subtitle2.copyWith(
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                            FAQ(),
              ],
            ),
          ),
        
        ),
        
      ],
    );
  }
}

class FaqData {
  String title, details;
  bool _expanded;

  FaqData(this.title, this.details, this._expanded);
}

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState([
        FaqData("how to Pay", "Card \n  Walllet \n  Coupon.", false),
        FaqData("Delivery Time", "3 - 7 days", false),
        FaqData(
            "Lorem ipsum",
            "Lourem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia ,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo atem.",
            false),
        FaqData(
            "Lorem ipsum",
            "Lourem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia ,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo atem.",
            false),
        FaqData(
            "Lorem ipsum",
            "Lourem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia ,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo atem.",
            false),
      ]);
}

class _FAQState extends State<FAQ> {
  List<FaqData> _list;
  _FAQState(this._list);
  _onExpansion(int index, bool isExpanded) {
    setState(() {
      _list[index]._expanded = !(_list[index]._expanded);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<ExpansionPanel> myList = [];
    for (int i = 0, ii = _list.length; i < ii; i++) {
      var expansionData = _list[i];
      myList.add(ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(expansionData.title,
                    style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold)));
          },
          body: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(expansionData.details,
                  style:
                      TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic))),
          isExpanded: expansionData._expanded));
    }
    return Container(
      margin: const EdgeInsets.all(4.0),
      child: new ExpansionPanelList(
          children: myList, expansionCallback: _onExpansion),
    );
  }
}

/**
 * Lourem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,
molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium
optio, eaque rerum! Provident similique accusantium nemo atem. Veritatis
obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam
nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,
 */
