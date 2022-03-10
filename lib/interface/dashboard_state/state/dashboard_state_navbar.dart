import 'package:flutter/material.dart';
import 'package:playdash/components/color.dart';

class DashNavbar extends StatelessWidget {
  const DashNavbar({Key key, this.icon, this.isActive}) : super(key: key);

  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Icon(
          icon,
          size: 24,
        ),
        const Spacer(),
        Container(
          height: 4,
          width: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isActive ? pdPrimaryColor : Colors.transparent,
          ),
        ),
      ],
    );
  }
}
