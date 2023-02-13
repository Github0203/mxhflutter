// import 'package:flutter/material.dart';
// import 'package:mangxahoi/components/bottomBar/bottomNavigationBar.dart';
// import 'package:mangxahoi/components/tabComponent/tabFriendPage.dart';
// import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
// import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
// import 'package:mangxahoi/pages/friend/friendHome.dart';

// class friendPage extends StatefulWidget {
//   const friendPage({super.key});

//   @override
//   State<friendPage> createState() => _friendPageState();
// }

// class _friendPageState extends State<friendPage> {
//   @override
//   Widget build(BuildContext context) {
//     double setwidthThuCong = MediaQuery.of(context).size.width;
//     double setheightThuCong = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         actions: <Widget>[
//           SizedBox(
//               width: setwidthThuCong,
//               child: const Padding(
//                 padding: EdgeInsets.only(left: 8.0, right: 8.0),
//                 child: appBarComponentHavePlus(tilte: 'Bạn bè'),
//               )),
//           // ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       onPressed:() => {
//                         Navigator.push(
// context,
// PageRouteBuilder(
// pageBuilder: (context, animation1, animation2) => const friendHome(),
// transitionDuration: const Duration(seconds: 0),
// ),
// ),
//                       }, 
//                       child: CustomerTextN.textButton16blue('Lời mời kết bạn'),
//                       )
//                   ],
//                 ),
//            const TextField(
//                       decoration: InputDecoration(
//                         isDense: true,   
//             contentPadding: EdgeInsets.all(8), 
//                       hintText: "Tìm kiếm",
//                       prefixIcon: Icon(Icons.search),
//                       border: OutlineInputBorder(
//                        borderRadius:
//                       BorderRadius.all(Radius.circular(100.0)),
//                                 ),
//                               ),
//                             ),
//                               Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       onPressed:() => {}, 
//                       child: CustomerTextN.textButton16blue('Sắp xếp'),
//                       )
//                   ],
//                 ),
                
//                    Container(
//                     height: setheightThuCong*0.8-150,
//                     // width: setwidthThuCong*0.8,
//                      child: const tabFriendPage(),
//                    ),
//               ],
//           ),
//         ),
//       ),     
//       bottomNavigationBar: const appBarBottom(),
//       floatingActionButton: const floatingBarBottom(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/bottomBar/bottombar.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/tabComponent/tabFriendPage.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';
import 'package:mangxahoi/pages/friend/friendC.dart';
import 'package:mangxahoi/pages/friend/friendHome.dart';
import 'package:mangxahoi/pages/friend/friendPageRequire.dart';
import 'package:mangxahoi/pages/friend/pageFriendRequired.dart';
import 'package:mangxahoi/pages/gropus/groupHome.dart';
import 'package:mangxahoi/pages/main/mainPage.dart';
import 'package:mangxahoi/pages/notification/notifiHome.dart';
import 'package:mangxahoi/pages/notification/notifiPage.dart';
import 'package:mangxahoi/pages/personal/personalHome.dart';
import 'package:mangxahoi/pages/watch/watchHome.dart';
import 'package:mangxahoi/thuvien/nav_bottom/curved_navigation_bar.dart';
import 'package:mangxahoi/components/bottomBar/bottombar.dart';


class friendPage extends   StatefulWidget {
  //  final bottombarC? data. 
  // friendPage({required this.data}); 
  @override
  _friendPageState createState() => _friendPageState();
}

class _friendPageState extends State<friendPage> {
  int _page = 1;
  // int trang = bottombarC.pageC;  
  
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setheightthucong = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          _page == 0 ? const appBarHome() :
          _page == 1 ? const appBarFriend() : 
          _page == 2 ? const appBarWatch() :
          _page == 3 ? const appBarGroup() :
          _page == 4 ? const appBarNotification() : 
          _page == 5 ? const appBarPersonal() : Container()
          // ),
        ],
      ),
      // bottomNavigationBar: bottombarC(indexC: 1, keyC: _bottomNavigationKey),
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
            index: 1,
            height: 60.0,
            items: <Widget>[
              const Icon(Icons.home, size: 30),            
              const Icon(Icons.person_add, size: 30),
              const Icon(Icons.videocam, size: 30),
              const Icon(Icons.groups, size: 30),
              // Icon(Icons.perm_identity, size: 30),
              Stack(
    children: <Widget>[
      const icon_thongbao(),
      Positioned(
        right: 0,
        child: Container(
          padding: const EdgeInsets.all(1),
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
                          // children: [
                          //   icon_ava(),
                          //   icon_menunho(),
                          // ],
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
              _page == 5 ? const personalHome() : Container(),
        
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
    return SizedBox(
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

class friendPageC extends StatelessWidget {   
  const friendPageC({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setheightthucong = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed:() => {
                        Navigator.push(
context,
PageRouteBuilder(
pageBuilder: (context, animation1, animation2) => pageFriendRequired(),
transitionDuration: const Duration(seconds: 0),
),
),
                      }, 
                      child: CustomerTextN.textButton16blue('Lời mời kết bạn'),
                      )
                  ],
                ),
           const TextField(
                      decoration: InputDecoration(
                        isDense: true,   
            contentPadding: EdgeInsets.all(8), 
                      hintText: "Tìm kiếm",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                       borderRadius:
                      BorderRadius.all(Radius.circular(100.0)),
                                ),
                              ),
                            ),
                              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed:() => {}, 
                      child: CustomerTextN.textButton16blue('Sắp xếp'),
                      )
                  ],
                ),
                
                   Container(
                    height: setheightthucong*0.8-10,
                    // width: setwidthThuCong*0.8,
                     child: const tabFriendPage(),
                   ),
              ],
          ),
        ),
      );
  }
}