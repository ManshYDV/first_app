import 'package:first_app/Screen/Utils/routes.dart';
import 'package:first_app/Screen/home_page.dart';
import 'package:first_app/Screen/login_page.dart';
import 'package:first_app/widgets.dart/themes.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightData(context),
      debugShowCheckedModeBanner: true,
      darkTheme: MyTheme.darkData(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
