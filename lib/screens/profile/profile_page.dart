import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/screens/notification/notifcation_page.dart';
import 'package:plantapp/screens/orders/order_page.dart';
import 'package:plantapp/screens/coupon/coupon_page.dart';
import 'package:plantapp/screens/support/support_page.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/user-avatar.png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Text(
                        "Micheal Jackson",
                        style: TextStyle(
                          fontSize: 21.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "mickjackson@mail.com",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                title: Text('Orders'),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderScreen(),
                    )),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                title: Text('My Details'),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () => print('Tapped on Row Orders'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                title: Text('Redeem Coupons'),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Coupon(),
                    )),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                title: Text('Notification'),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationPage(),
                    ))
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                title: Text('Help & Support'),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SupportPage(),
                    )),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                title: Text('About'),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () => print('Tapped on Row Orders'),
              ),
            ),
          ]),
    );
  }
}
