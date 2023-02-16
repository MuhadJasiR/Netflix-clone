import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/constraints/Colors.dart';
import 'package:netflix_clone/presentation/main_page/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: backgroundColors,
          backgroundColor: Colors.black,
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white))),
      home: ScreenMainPage(),
    );
  }
}
