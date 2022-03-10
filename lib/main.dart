import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playdash/components/color.dart';
import 'package:playdash/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PlayDash',
      theme: ThemeData(
        primaryColor: pdPrimaryColor,
        scaffoldBackgroundColor: pdBackgroundColor,
        textTheme: GoogleFonts.quicksandTextTheme(Theme.of(context).textTheme),
      ),
      home: Splash(),
    );
  }
}

