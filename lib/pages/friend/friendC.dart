

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/bottomBar/bottombar.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/tabComponent/tabFriendPage.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';
import 'package:mangxahoi/pages/friend/friendHome.dart';
import 'package:mangxahoi/pages/friend/pageFriendRequired.dart';
import 'package:mangxahoi/pages/gropus/groupHome.dart';
import 'package:mangxahoi/pages/main/mainPage.dart';
import 'package:mangxahoi/pages/personal/personalHome.dart';
import 'package:mangxahoi/pages/watch/watchHome.dart';
import 'package:mangxahoi/thuvien/nav_bottom/curved_navigation_bar.dart';
import 'package:mangxahoi/components/bottomBar/bottombar.dart';



class friendC extends StatelessWidget {   
  const friendC({super.key});

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