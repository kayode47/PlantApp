import 'package:plantapp/model/Plant.dart';

class Order {
  final DateTime time;
  final int id;
  final String orderID, status, image;
  final List<Plant> orderList;

  Order({this.id, this.orderID, this.orderList, this.status, this.image, this.time});
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
      care: ['mediun', '30', 'twice a week', 'medium'],
      description: dummyText,
      xxx: "non"),
  Plant(
      id: 2,
      title: 'Ball Catus',
      price: 241,
      type: 1,
      group: 2,
      image1: "assets/images/plant2_1.png",
      image2: "assets/images/plant2_1.png",
      description: dummyText,
      xxx: "non"),
  Plant(
      id: 3,
      title: 'Desert Catus',
      price: 35,
      type: 1,
      group: 2,
      image1: "assets/images/plant3_1.png",
      image2: "assets/images/plant3_1.png",
      description: dummyText,
      xxx: "non"),
];

List<Plant> plants0 = [
  Plant(
      id: 2,
      title: 'Ball Catus',
      price: 241,
      type: 1,
      group: 2,
      image1: "assets/images/plant2_1.png",
      image2: "assets/images/plant2_1.png",
      description: dummyText,
      xxx: "non"),
];

List<Plant> plants1 = [
  Plant(
      id: 1,
      title: 'Red Catus',
      price: 86,
      type: 1,
      group: 2,
      image1: "assets/images/plant1_1.png",
      image2: "assets/images/plant1_1.png",
      care: ['mediun', '30', 'twice a week', 'medium'],
      description: dummyText,
      xxx: "non"),
  Plant(
      id: 3,
      title: 'Desert Catus',
      price: 35,
      type: 1,
      group: 2,
      image1: "assets/images/plant3_1.png",
      image2: "assets/images/plant3_1.png",
      description: dummyText,
      xxx: "non"),
];

List<Order> orders = [
  Order(
    id: 1,
    orderID: "A9TP23",
    status: 'Order Canceled',
    orderList: plants,
    image: "assets/images/plant3_1.png",
        time: DateTime.parse('2021-04-20 20:18:00'),

  ),
  Order(
    id: 1,
    orderID: "GB56SW",
    status: 'Delivered',
    orderList: plants1,
    image: "assets/images/plant2_1.png",
        time: DateTime.parse('2021-04-20 20:18:00'),

  ),
  Order(
    id: 1,
    orderID: "R11IE09",
    status: 'order confirm',
    orderList: plants0,
    image: "assets/images/plant1_1.png",
    time: DateTime.parse('2021-04-20 20:18:00'),
  ),
];
