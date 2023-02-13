import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/personal/personalPage.dart';

class personalHome extends StatefulWidget {
  const personalHome({super.key});

  @override
  State<personalHome> createState() => _personalHomeState();
}

class _personalHomeState extends State<personalHome> {
  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;
    double setheightThuCong = MediaQuery.of(context).size.height;

    return const Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   actions: <Widget>[
      //     SizedBox(
      //         width: setwidthThuCong,
      //         child: const Padding(
      //           padding: EdgeInsets.only(left: 8.0, right: 8.0),
      //           child: appBarComponentHavePlus(tilte: 'Lời mời kết bạn'),
      //         )),
      //     // ),
      //   ],
      // ),
      body: personalPage(),      
      // bottomNavigationBar: const appBarBottom(),
      // floatingActionButton: const floatingBarBottom(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}