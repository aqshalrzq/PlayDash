import 'package:flutter/material.dart';
import 'package:playdash/components/responsive.dart';
import 'package:playdash/interface/dashboard_state/content/dashboard_content_card_footerbar.dart';
import 'package:playdash/models/model_mobile.dart';
import 'package:playdash/pages/detail.dart';

class DashboardStateFooterBar extends StatelessWidget {
  const DashboardStateFooterBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: isLandscape(context) ? 3 : 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.2,
        children: List.generate(listGamesMobile.length, (index) {
          return CardContentFooter(
            mobile: listGamesMobile[index],
            tapEvent: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(mobile: listGamesMobile[index])));
            },
          );
        }),
      ),
    );
  }
}
