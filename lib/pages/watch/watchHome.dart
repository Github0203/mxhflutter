
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/bottomBar/bottomNavigationBar.dart';

import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/watch/tabWatchPage.dart';

class watchHome extends StatefulWidget {
  const watchHome({super.key});

  @override
  State<watchHome> createState() => _watchHomeState();
}

class _watchHomeState extends State<watchHome> {
  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;
    double setheightThuCong = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container
      (height: setheightThuCong*0.8-10,
      child: const tabWatchPage()),            
    );
  }
}