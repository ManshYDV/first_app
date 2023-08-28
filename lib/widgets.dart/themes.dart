import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightData(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      //primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 2.2,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      primarySwatch: Colors.blueGrey);

  static ThemeData darkData(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
