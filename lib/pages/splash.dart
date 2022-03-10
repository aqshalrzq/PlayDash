import 'package:flutter/material.dart';
import 'package:playdash/interface/splash_state/splash_state_center.dart';
import 'package:playdash/interface/splash_state/splash_state_top.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // SPLASH
            // TOP STATE
            SplashStateTop(),
            // SPLASH
            // CENTER STATE
            SplashStateCenter()
          ],
        ),
      ),
    );
  }
}
