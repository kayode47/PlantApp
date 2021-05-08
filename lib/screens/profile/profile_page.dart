import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                leading: Icon(Icons.shopping_bag_outlined,color: Colors.black),
                title: Text('Orders'),
                trailing: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                onTap: () => print('Tapped on Row Orders'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined,color: Colors.black),
                title: Text('Orders'),
                trailing: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                onTap: () => print('Tapped on Row Orders'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined,color: Colors.black),
                title: Text('Orders'),
                trailing: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                onTap: () => print('Tapped on Row Orders'),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined,color: Colors.black),
                title: Text('Orders'),
                trailing: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                onTap: () => print('Tapped on Row Orders'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined,color: Colors.black),
                title: Text('Orders'),
                trailing: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                onTap: () => print('Tapped on Row Orders'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_bag_outlined,color: Colors.black),
                title: Text('Orders'),
                trailing: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                onTap: () => print('Tapped on Row Orders'),
              ),
            ),



            // Column(
            //   children: [
            //     Card(
            //       child: Row(
            //         children: [
            //           Expanded(
            //             child: Row(children: [
            //               Icon(
            //                 Icons.shopping_bag_outlined,color: Colors.black,
            //                 color: Colors.black,
            //               ),
            //               Text(
            //                 "mickjackson@mail.com",
            //                 style: TextStyle(
            //                   fontSize: 24.0,
            //                   color: Colors.black38,
            //                   fontWeight: FontWeight.normal,
            //                 ),
            //               ),
            //               Icon(
            //                 Icons.arrow_forward,
            //                 color: Colors.black,
            //               ),
            //             ]),
            //           ),
            //           Expanded(
            //             child: Row(children: [
            //               Icon(
            //                 Icons.shopping_bag_outlined,color: Colors.black,
            //                 color: Colors.black,
            //               ),
            //               Text(
            //                 "mickjackson@mail.com",
            //                 style: TextStyle(
            //                   fontSize: 24.0,
            //                   color: Colors.black38,
            //                   fontWeight: FontWeight.normal,
            //                 ),
            //               ),
            //               Icon(
            //                 Icons.arrow_forward,
            //                 color: Colors.black,
            //               ),
            //             ]),
            //           ),
            //           Expanded(
            //             child: Row(children: [
            //               Icon(
            //                 Icons.shopping_bag_outlined,color: Colors.black,
            //                 color: Colors.black,
            //               ),
            //               Text(
            //                 "mickjackson@mail.com",
            //                 style: TextStyle(
            //                   fontSize: 24.0,
            //                   color: Colors.black38,
            //                   fontWeight: FontWeight.normal,
            //                 ),
            //               ),
            //               Icon(
            //                 Icons.arrow_forward,
            //                 color: Colors.black,
            //               ),
            //             ]),
            //           ),
            //           Expanded(
            //             child: Row(children: [
            //               Icon(
            //                 Icons.shopping_bag_outlined,color: Colors.black,
            //                 color: Colors.black,
            //               ),
            //               Text(
            //                 "mickjackson@mail.com",
            //                 style: TextStyle(
            //                   fontSize: 24.0,
            //                   color: Colors.black38,
            //                   fontWeight: FontWeight.normal,
            //                 ),
            //               ),
            //               Icon(
            //                 Icons.arrow_forward,
            //                 color: Colors.black,
            //               ),
            //             ]),
            //           ),
            //           Expanded(
            //             child: Row(children: [
            //               Icon(
            //                 Icons.shopping_bag_outlined,color: Colors.black,
            //                 color: Colors.black,
            //               ),
            //               Text(
            //                 "mickjackson@mail.com",
            //                 style: TextStyle(
            //                   fontSize: 24.0,
            //                   color: Colors.black38,
            //                   fontWeight: FontWeight.normal,
            //                 ),
            //               ),
            //               Icon(
            //                 Icons.arrow_forward,
            //                 color: Colors.black,
            //               ),
            //             ]),
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // )
          ]),
    );
  }
}
