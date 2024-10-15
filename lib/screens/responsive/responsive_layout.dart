import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget deskTopBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.deskTopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else {
          return deskTopBody;
        }
      },
    );
  }
}
