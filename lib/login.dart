import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui/flutter_firebase_ui.dart';
import 'package:plantapp/screens/home/home_screen.dart';

class MyLoginPage extends StatefulWidget {
  String title;
  MyLoginPage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() => new _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  StreamSubscription<FirebaseUser> _listener;

  FirebaseUser _currentUser;
  String _token;

  @override
  void initState() {
    super.initState();
    checkCurrentUser();
  }

  @override
  void dispose() {
    _listener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_currentUser == null) {
      return new SignInScreen(
          title: "Firebse UI",
          header: new Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: new Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text('Login'),
            ),
          ),
          showBar: true,
          bottomPadding: 5,
          avoidBottomInset: true,
          color: Colors.white,
          providers: [
            ProvidersTypes.facebook,
            ProvidersTypes.google,
            ProvidersTypes.email
          ],
          twitterConsumerSecret: "",
          twitterConsumerKey: "",
          horizontalPadding: 12);
    } else {
      return new LoginScreen(user: _currentUser);
    }
  }

  void checkCurrentUser() async {
    _currentUser = await _auth.currentUser();

    _currentUser?.getIdToken(refresh: true);
    _listener = _auth.onAuthStateChanged.listen((FirebaseUser user) {
      setState(() {
        _currentUser = user;
      });
    });
  }
}

class LoginScreen extends StatelessWidget {
  FirebaseUser user;

  LoginScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();

    // new Scaffold(
    //   appBar: AppBar(
    //     title: Text("Home Page"),
    //     elevation: 4.0,
    //     actions: <Widget>[
    //       IconButton(icon: Icon(Icons.exit_to_app), onPressed: signOutProviders)
    //     ],
    //   ),
    //   body: new Card(
    //     child: Container(
    //       child: Center(
    //         child: Row(
    //           children: <Widget>[
    //             // CircleAvatar(
    //             //   radius: 30.0,
    //             //   child: Image.network((user.photoUrl == null)? AssetImage('images/user-avatar.png') : NetworkImage(user.photoUrl)),
    //             //   backgroundColor: Colors.transparent,
    //             // ),
    //             Padding(
    //                 padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
    //                 child: Text(
    //                   "Welcome " + user.displayName ?? user.email,
    //                   style: TextStyle(fontSize: 20.0, color: Colors.lightBlue),
    //                 ))
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  
  }
}
