import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("K-Market"),
      ),
      body: Center(
        child: Container(
          child: const Text(
            "Hello World",
            style: TextStyle(
              backgroundColor: Color.fromARGB(255, 203, 6, 237),
              color: Color.fromARGB(255, 37, 236, 163),
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
