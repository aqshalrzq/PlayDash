import 'package:flutter/material.dart';
import 'package:playdash/components/color.dart';

class SplashStateBottom extends StatelessWidget {
  const SplashStateBottom({Key key, this.tapEvent}) : super(key: key);
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // SPLASH STATE BOTTOM
      // ACTION PARAMETERS
      onTap: tapEvent,
      // SPLASH STATE BOTTOM
      // COLOR & ROUNDED STYLE
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(48)),
          color: pdPrimaryColor
        ),
        // SPLASH STATE BOTTOM
        // STATIC SIZE
        width: 200,
        height: 50,
        // SPLASH STATE BOTTOM
        // CONTENT ACTION
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Mulai Sekarang!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: 0.5
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
