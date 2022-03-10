import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playdash/components/color.dart';
import 'package:playdash/interface/dashboard_state/state/dashboard_state_accentbar.dart';
import 'package:playdash/interface/dashboard_state/state/dashboard_state_appbar.dart';
import 'package:playdash/interface/dashboard_state/state/dashboard_state_contentbar.dart';
import 'package:playdash/interface/dashboard_state/state/dashboard_state_footerbar.dart';
import 'package:playdash/interface/dashboard_state/state/dashboard_state_navbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "PlayDash",
          style: GoogleFonts.quicksand(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w600
          ),
        ),
        leading: const Icon(
          Icons.menu,
          size: 32,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.grey,
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            color: Colors.grey,
            onPressed: (){},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 72,
        width: double.infinity,
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              offset: const Offset(0, 3),
              color: Colors.black.withAlpha(4)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            DashNavbar(
              icon: Icons.dashboard_customize,
              isActive: true,
            ),
            DashNavbar(
              icon: Icons.calendar_today,
              isActive: false,
            ),
            DashNavbar(
              icon: Icons.search,
              isActive: false,
            ),
            DashNavbar(
              icon: Icons.account_circle,
              isActive: false,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            DashboardStateAppBar(),
            DashboardStateContentBar(),
            DashboardStateAccentBar(),
            DashboardStateFooterBar()
          ],
        ),
      ),
    );
  }
}

