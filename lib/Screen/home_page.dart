import 'package:first_app/products/kproducts.dart';
import 'package:first_app/widgets.dart/drawer.dart';
import 'package:first_app/widgets.dart/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.lightBlueAccent,
        // elevation: 2.2,

        title: const Text(
          "K-Market",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: KPModel.prItems.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: KPModel.prItems[index],
            );
          },
        ),
      ),
      // body: Center(
      //   child: Container(
      //     decoration: const BoxDecoration(
      //       border: Border(
      //         left: BorderSide(color: Colors.black),
      //         right: BorderSide(color: Colors.black),
      //       ),
      //       // boxShadow: [
      //       //   BoxShadow(
      //       //     blurRadius: .5,
      //       //     color: Colors.grey,
      //       //     spreadRadius: 20.0,
      //       //   ),]
      //       //shape: BoxShape.circle,
      //     ),
      //     child: Text(
      //       "Hello World",
      //       style: TextStyle(
      //         letterSpacing: 8.0,
      //         wordSpacing: 8.0,
      //         // foreground: Paint()..color = Colors.purple,
      //         // ..style = PaintingStyle.stroke ,
      //         backgroundColor: const Color.fromARGB(255, 236, 205, 242),
      //         color: const Color.fromARGB(255, 37, 236, 163),
      //         fontSize: 30,
      //         fontStyle: FontStyle.italic,
      //         decoration: TextDecoration.combine([
      //           TextDecoration.overline,
      //           TextDecoration.underline,
      //         ]),
      //         decorationColor: Colors.redAccent,
      //         decorationStyle: TextDecorationStyle.dotted,
      //         shadows: const [
      //           Shadow(
      //               color: Colors.black, blurRadius: 4, offset: Offset(4, 1)),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      drawer: const Mydrawer(),
    );
  }
}
