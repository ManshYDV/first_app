import 'package:first_app/Screen/Utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png", fit: BoxFit.fill),
                Text(
                  "Welcome to K-Market $name",
                  style: const TextStyle(
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter E-mail or Phone No",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value != null) {
                            if (value.isEmpty) {
                              return "Username cannot be empty";
                            }
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Password", labelText: "Enter Password"),
                        validator: (value) {
                          if (value != null) {
                            if (value.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 8) {
                              return "Password size should be atleast 8 characters or symbols or numbers";
                            }
                            return null;
                          }
                        },
                      ),

                      const SizedBox(
                        height: 40,
                      ),

                      Material(
                        color: const Color.fromARGB(255, 98, 50, 182),
                        borderRadius:
                            BorderRadius.circular(changeButton ? 200 : 10),
                        child: InkWell(
                          splashColor: const Color.fromARGB(255, 155, 112, 231),
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 40,
                            width: changeButton ? 50 : 150,

                            // color: Colors.deepPurple,
                            alignment: Alignment.center,
                            // decoration: BoxDecoration(
                            //   // shape: changeButton
                            //   //     ? BoxShape.circle
                            //   //     : BoxShape.rectangle,
                            //   color: Colors.deepPurple,

                            // ),
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: const Text("Login"),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
