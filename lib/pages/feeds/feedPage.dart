import 'package:flutter/material.dart';
import 'package:mangxahoi/components/bottomBar/bottomNavigationBar.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/pages/createPost/createPost.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedComponents.dart';
import 'package:flutter/cupertino.dart';
import 'package:mangxahoi/pages/feeds/feedFriendComponents.dart';
import 'package:mangxahoi/pages/friend/friendPageRequire.dart';

class feedHome extends StatefulWidget {
  const feedHome({super.key});

  @override
  State<feedHome> createState() => _feedHomeState();
}

class _feedHomeState extends State<feedHome> {
  int _selectedIndex = 0;

  // void _onItemTap(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  static List<Widget> _pages = <Widget>[
    feedComponents(),
    feedFriendComponents(),
    icon_album(),
    friendPageRequire(),
  ];

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: setwidththucong,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 207, 207, 207),
          ),
          child: Center(
            child: _pages.elementAt(_selectedIndex),
          ),
        ),
      ),
    );
  }
}
