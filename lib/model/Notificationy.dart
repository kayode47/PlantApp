
class Notificationy {
  final DateTime time;
  final int id;
  final String title, note, image;

  Notificationy({this.id, this.title, this.note, this.image, this.time});
}

List<Notificationy> notificationys = [
  Notificationy(
    id: 1,
    title: "A9TP23",
    note: 'Order Canceled',
    image: "assets/images/plant3_1.png",
    time: DateTime.parse('2021-04-20 20:18:00'),
  ),
  Notificationy(
    id: 1,
    title: "GB56SW",
    note: 'Delivered',
    image: "assets/images/plant2_1.png",
    time: DateTime.parse('2021-04-20 20:18:00'),
  ),
  Notificationy(
    id: 1,
    title: "R11IE09",
    note: 'order confirm',
    image: "assets/images/plant1_1.png",
    time: DateTime.parse('2021-04-20 20:18:00'),
  ),
];
