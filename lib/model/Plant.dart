import 'package:flutter/material.dart';

class Plant {
  final String image1, image2, title, description, xxx;
  final List<String> care;
  final int type, group, price, id;

  Plant(
      {this.id,
      this.title,
      this.price,
      this.type,
      this.group,
      this.image1,
      this.image2,
      this.description,
      this.care,
      this.xxx});

}

  List<Plant> plants = [
    Plant(
      id: 1,
      title: 'Red Catus',
      price: 86,
      type: 1,
      group: 2,
      image1: "assets/images/plant1_1.png",
      image2: "assets/images/plant1_1.png",
      care: ['mediun','30','twice a week', 'medium'],
      description: dummyText,
      xxx: "non"
    ),
    Plant(
      id: 2,
      title: 'Ball Catus',
      price: 241,
      type: 1,
      group: 2,
      image1: "assets/images/plant2_1.png",
      image2: "assets/images/plant2_1.png",
      description: dummyText,
      xxx: "non"
    ),
    Plant(
      id: 3,
      title: 'Desert Catus',
      price: 35,
      type: 1,
      group: 2,
      image1: "assets/images/plant3_1.png",
      image2: "assets/images/plant3_1.png",
      description: dummyText,
      xxx: "non"
    ),
    Plant(
      id: 4,
      title: 'Fern',
      price: 61,
      type: 2,
      group: 4,
      image1: "assets/images/plant4_1.png",
      image2: "assets/images/plant4_1.png",
      description: dummyText,
      xxx: "non"
    ),
    Plant(
      id: 5,
      title: 'Pine Palm',
      price: 342,
      type: 3,
      group: 6,
      image1: "assets/images/plant5_1.png",
      image2: "assets/images/plant5_1.png",
      description: dummyText,
      xxx: "non"
    ),
    Plant(
      id: 6,
      title: 'Thin Palm',
      price: 42,
      type: 3,
      group: 6,
      image1: "assets/images/plant6_1.png",
      image2: "assets/images/plant6_1.png",
      description: dummyText,
      xxx: "non"
    ),
  ];

    String dummyText="Very short - stemmed plant growing to  50-100 cm (25-40 in) tall, spreading  by offsets. Have thick and fleshy leaves  that hold water to sustain the palnt during a drought.";




