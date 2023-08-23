import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.fill),
            const Text(
              "Welcome to K-Market",
              style: TextStyle(
                // backgroundColor: Color.fromARGB(255, 39, 37, 34),
                color: Color.fromARGB(255, 31, 73, 73),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter E-mail or Phone No",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password", labelText: "Enter Password"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Hello Manish");
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
