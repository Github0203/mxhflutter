import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class iconLogoComponent extends StatelessWidget {
  const iconLogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double setpaddingthucong = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          top: setpaddingthucong * 0.1,
          bottom: setpaddingthucong * 0.1,
          left: setpaddingthucong * 0.05,
          right: setpaddingthucong * 0.05),
      child: const icon_logolon(),
    );
  }
}
