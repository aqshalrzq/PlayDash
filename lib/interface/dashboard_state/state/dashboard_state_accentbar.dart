import 'package:flutter/material.dart';

class DashboardStateAccentBar extends StatelessWidget {
  const DashboardStateAccentBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            const Text(
              "Rekomendasi Untuk Anda",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text(
                "View All",
                style: TextStyle(fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
