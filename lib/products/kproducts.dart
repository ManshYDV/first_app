class item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String storeName;
  final String color;
  final String image;

  item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.storeName,
      required this.price,
      required this.color,
      required this.image});
}

final priducrs = [
  item(
    id: "01",
    name: "Rice",
    desc: "40 Rs per kg and if bought 10 kg together get 1 kg Free !!",
    price: 40,
    storeName: "Store no 1",
    color: "#33505a",
    image:
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpapercave.com%2Fwp%2Fwp4233489.jpg&f=1&nofb=1&ipt=1d650ab6bb97d0be0bff239c51e79ef18007d9c9f28fe17589b78c51d2228968&ipo=images",
  ),
];
