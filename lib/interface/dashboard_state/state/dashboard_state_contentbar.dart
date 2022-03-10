import 'package:flutter/material.dart';
import 'package:playdash/components/color.dart';
import 'package:playdash/interface/dashboard_state/content/dashboard_content_card_contentbar.dart';
import 'package:playdash/models/models_desktop.dart';

class DashboardStateContentBar extends StatefulWidget {
  const DashboardStateContentBar({Key key}) : super(key: key);

  @override
  _DashboardStateContentBarState createState() =>
      _DashboardStateContentBarState();
}

class _DashboardStateContentBarState extends State<DashboardStateContentBar> {
  int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 264,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              itemCount: listGamesDesktop.length,
              itemBuilder: (context, index) =>
                  CardContentBar(desktop: listGamesDesktop[index]),
              controller: PageController(viewportFraction: 0.8, initialPage: 0),
              onPageChanged: (value) {
                setState(() {
                  currentSlider = value;
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(listGamesDesktop.length,
                  (index) => buildDotNav(index: index)),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDotNav({int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: currentSlider == index ? 24 : 6,
      decoration: BoxDecoration(
          color: currentSlider == index
              ? pdPrimaryColor
              : pdPrimaryColor.withAlpha(72),
          borderRadius: BorderRadius.circular(4)),
    );
  }
}
