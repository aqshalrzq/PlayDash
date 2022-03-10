import 'package:flutter/material.dart';

class SplashStateTop extends StatelessWidget {

  const SplashStateTop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // SPLASH STATE TOP
    // DECLARATION DYNAMIC SIZE
    Size size = MediaQuery.of(context).size;

    return Container(
      // SPLASH STATE TOP
      // DETERMINE SIZE
      height: size.height * 0.5,
      child: ClipRRect(
        // SPLASH STATE TOP
        // ROUNDED STYLE
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32)
        ),
        // SPLASH STATE TOP
        // OBJECT IMAGE FOR ASSETS DIRECTORY
        child: Image.network(
          "https://images.unsplash.com/photo-1560253023-3ec5d502959f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
          height: size.height * 0.5,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
