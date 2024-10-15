import 'package:beunique/screens/responsive/desktop_body.dart';
import 'package:beunique/screens/responsive/mobile_body.dart';
import 'package:beunique/screens/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        deskTopBody: DesktopBody(),
      ),
    );
  }
}
