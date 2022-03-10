import 'package:flutter/material.dart';
import 'package:playdash/components/color.dart';

class DashboardStateAppBar extends StatefulWidget {
  const DashboardStateAppBar({Key key}) : super(key: key);

  @override
  _DashboardStateAppBarState createState() => _DashboardStateAppBarState();
}

class _DashboardStateAppBarState extends State<DashboardStateAppBar> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> recommendedGames = [
      "Popular",
      "Featured",
      "Trending",
      "Best Seller",
      "Category",
      "Family",
      "Game Of The Year"
    ];

    return Padding(
      padding: const EdgeInsets.all(24),
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recommendedGames.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  recommendedGames[index],
                  style: TextStyle(
                    fontSize: 16,
                    color: selectedIndex == index ? pdPrimaryColor : pdTextColor,
                    fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.normal
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );

  }
}
