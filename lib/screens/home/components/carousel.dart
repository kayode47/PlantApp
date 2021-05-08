import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children:[ Center(
        child: SizedBox(
          height: 120.0,
          width: width*0.9,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.slowMiddle,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Colors.grey[400],
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomCenter,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
              // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
              Image.asset("assets/images/plant_sales.jpg", fit: BoxFit.fill),
              Image.asset("assets/images/banner_1.jpg",fit: BoxFit.fill),
              Image.asset("assets/images/banner_3.png",fit: BoxFit.fill),

            ],
          ),
        ),
      ),
      ]
    );
  }
}