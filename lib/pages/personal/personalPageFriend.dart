import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/bottomBar/bottombar.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';
import 'package:mangxahoi/pages/friend/friendC.dart';
import 'package:mangxahoi/pages/friend/friendHome.dart';
import 'package:mangxahoi/pages/friend/friendPage.dart';
import 'package:mangxahoi/pages/friend/friendPageRequire.dart';
import 'package:mangxahoi/pages/gropus/groupHome.dart';
import 'package:mangxahoi/pages/notification/notifiHome.dart';
import 'package:mangxahoi/pages/notification/notifiPage.dart';
import 'package:mangxahoi/pages/personal/personalHome.dart';
import 'package:mangxahoi/pages/watch/watchHome.dart';
import 'package:mangxahoi/thuvien/nav_bottom/curved_navigation_bar.dart';
import 'package:mangxahoi/components/bottomBar/bottombar.dart' as Globals;


class personalPageFriend extends StatefulWidget {
  //    final bottombarC? data; 
  // HomePage({required this.data}); 
  @override
  _personalPageFriendState createState() => _personalPageFriendState();
}

class _personalPageFriendState extends State<personalPageFriend> {
  // int _page = Globals.IDPageClass.pageClass;  
  int _page = 5;  
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    // final data = IDPageClass(pageClass: 0);
    print(Globals.IDPageClass.pageClass);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          _page == 0 ? const appBarHome() :
          _page == 1 ? const appBarFriend() : 
          _page == 2 ? const appBarWatch() :
          _page == 3 ? const appBarGroup() :
          _page == 4 ? const appBarNotification() : 
          _page == 5 ? const appBarFriend() : Container()
          // ),
        ],
      ),
      // bottomNavigationBar: bottombarC(indexC: 0, keyC: _bottomNavigationKey),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
          child: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: _page,
            height: 60.0,
            items: <Widget>[         
               Container(
                width: 30,
                child: const icon_bangtin(),
              ),
               Container(
                width: 30,
                child: const icon_themban(),
              ),
               Container(
                width: 30,
                child: const icon_videofeed(),
              ),
              Container(
                width: 30,
                child: const icon_nhom(),
              ), 
              Stack(
    children: <Widget>[
      const icon_thongbao(),
      Positioned(
        right: 0,
        child: Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(6),
          ),
          // ignore: prefer_const_constructors
          constraints: BoxConstraints(
            minWidth: 16,
            minHeight: 16,
          ),
          child: CustomerTextN.textButton13NormalWhite('29'),
        ),
      )
    ],
  ),
              Stack(
                          children: const <Widget>[
                            icon_ava(),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: icon_menunho(),
                              ),
                            ),
                          ],
                        ),
              
            ],
            color: Colors.white,
            buttonBackgroundColor: Colors.lightBlueAccent,
            backgroundColor: Color.fromARGB(255, 117, 80, 80),
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            letIndexChange: (index) => true,
          ),
        ),
        body: _page == 0 ? const feedHome() :
              _page == 1 ? friendHome() :
              _page == 2 ? const watchHome() : 
              _page == 3 ? const groupHome() :
              _page == 4 ? const notifiHome() : 
              _page == 5 ? const friendPageC() : Container(),
        );
  }
}



class appBarHome extends StatelessWidget {
  const appBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return SizedBox(
              width: setwidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponent(),
              ));
  }
}

class appBarFriend extends StatelessWidget {
  const appBarFriend({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
              width: setwidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponentHavePlus(tilte: 'Bạn bè'),
              ));
  }
}
class appBarWatch extends StatelessWidget {
  const appBarWatch({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
              width: setwidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponentHavePlus(tilte: 'Watch'),
              ));
  }
}
class appBarGroup extends StatelessWidget {
  const appBarGroup({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
              width: setwidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponentHavePlus(tilte: 'Group'),
              ));
  }
}
class appBarPersonal extends StatelessWidget {
  const appBarPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
              width: setwidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponentHavePlus(tilte: 'Trang cá nhân'),
              ));
  }
}