import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Coupon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(),
      body: CouponPage(),
    );
  }
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


class CouponPage extends StatefulWidget {
  @override
  _CouponPageState createState() => _CouponPageState();
}

String _validateItemRequired(String value) {
  return value.isEmpty ? 'Item Required' : null;
}

class _CouponPageState extends State<CouponPage> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formStateKey,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 16.0,
              ),
              decoration: InputDecoration(
                labelText: "Coupon",
                labelStyle: TextStyle(color: Colors.purple),
//border: UnderlineInputBorder(),
//enabledBorder: OutlineInputBorder(borderSide: BorderSide(color.Colors.purple)),
                border: OutlineInputBorder(),
              ),
              validator: (value) => _validateItemRequired(value),
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
          ),
          child: Text('Redeem'),
          onPressed: () => _submitOrder(),
        ),
      ],
    );
  }

  void _submitOrder() {
    if (_formStateKey.currentState.validate()) {
      _formStateKey.currentState.save();

    }
  }
}
