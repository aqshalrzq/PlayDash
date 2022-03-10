import 'package:flutter/material.dart';
import 'package:playdash/components/color.dart';
import 'package:playdash/interface/splash_state/splash_state_bottom.dart';
import 'package:playdash/pages/dashboard.dart';

class SplashStateCenter extends StatelessWidget {
  const SplashStateCenter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SPLASH STATE CENTER
          // MAIN TEXT
          const Text(
            "Tips Khusus\nUntuk Kamu",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: pdTextColor,
              height: 1.2
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          // SPLASH STATE CENTER
          // ACCENT TEXT
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pharetra orci a quam dictum, id dignissim orci auctor.",
            style: TextStyle(
              height: 2,
              color: Color(0xFF808080),
              fontSize: 16
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          // SPLASH STATE CENTER
          // ACTION TO DASHBOARD PAGES
          SplashStateBottom(
            tapEvent: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
        ],
      ),
    );
  }
}
