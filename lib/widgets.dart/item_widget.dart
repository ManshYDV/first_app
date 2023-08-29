import 'package:first_app/products/kproducts.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 190, 225, 242),
      elevation: 5,
      child: ListTile(
        onTap: () {
          print("${item.name} is pressed");
        },
        leading: Image.network(
          item.image,
          height: 100,
          width: 200,
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "₹${item.price}",
          textScaleFactor: 1,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
