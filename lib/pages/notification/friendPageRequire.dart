// import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
// import 'package:flutter/material.dart';
// import 'package:mangxahoi/components/bottomBar/bottomNavigationBar.dart';
// import 'package:mangxahoi/components/buttons/buttons.dart';
// import 'package:mangxahoi/components/icons/Icons.dart';
// import 'package:mangxahoi/components/tabComponent/tabFriendPage.dart';
// import 'package:mangxahoi/components/widgets/AvaterN.dart';
// import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
// import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';

// class friendPageRequire extends StatefulWidget {
//   const friendPageRequire({super.key});

//   @override
//   State<friendPageRequire> createState() => _friendPageRequireState();
// }

// class _friendPageRequireState extends State<friendPageRequire> {
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
//                 child: appBarComponentHavePlus(tilte: 'Lời mời kết bạn'),
//               )),
//           // ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(8,10,8,10),
//           child: Column(
//               children: <Widget>[
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
//                       onPressed:() => showAdaptiveActionSheet(
//                         context: context,
//                         title: CustomerTextN.textButton16BoldBlack('Sắp xếp'),
//                         androidBorderRadius: 30,
//                         actions: <BottomSheetAction>[
//                           BottomSheetAction(
//                               title: Container(
//                                 child: Row(children: <Widget>[
//                                   Container(
//                                       width: 20, child: const icon_boloc()),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 5.0),
//                                     child: CustomerTextN.textButton16Normal(
//                                         'Ngẫu nhiên'),
//                                   )
//                                 ]),
//                               ),
//                               onPressed: (context) {}),
//                           BottomSheetAction(
//                               title: Row(children: <Widget>[
//                                 Container(
//                                     width: 20, child: const icon_moinhat()),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 5.0),
//                                   child: CustomerTextN.textButton16Normal(
//                                       'Lời mời mới nhất trước tiên'),
//                                 )
//                               ]),
//                               onPressed: (context) {}),
//                           BottomSheetAction(
//                               title: Row(children: <Widget>[
//                                 Container(
//                                     width: 20, child: const icon_cunhat()),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 5.0),
//                                   child: CustomerTextN.textButton16Normal(
//                                       'Lời mời cũ nhất trước tiên'),
//                                 )
//                               ]),
//                               onPressed: (context) {}),
//                         ],
//                         cancelAction: CancelAction(
//                             title: CustomerTextN.textButton16Normal(
//                                 'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
//                       ), 
//                       child: CustomerTextN.textButton16blue('Sắp xếp'),
//                       )
//                   ],
//                 ),
                
//                    Container(
//                     height: setheightThuCong*0.8-100,
//                     // width: setwidthThuCong*0.8,
//                      child: 
//                      ListView.builder(     
//             shrinkWrap: true,
//             physics: const ScrollPhysics(),
//               itemCount: cinemas.length,
//                 itemBuilder: (context, index) =>  
//                     Column(
//                       children: <Widget>[
//                      Row(
//                   children: <Widget>[
//                     AvaterN.img('https://genk.mediacdn.vn/k:thumb_w/640/2015/1-2-1444483204242/nhung-dieu-thu-vi-ve-pikachu-bieu-tuong-cua-pokemon.png', 90.0, 90.0, 100.0),
//                     const SizedBox(width:10),
//                     Expanded(
          
//                       child: Column(
//                         children: <Widget>[
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               CustomerTextN.textButton18Medium('${cinemas[index].name}'),
//                               Row(
//                                 children: <Widget>[
//                                   CustomerTextN.textButton13Grey('2 tuần'),
//                                   const SizedBox(width:10),
//                                   GestureDetector(
//                                     onTap: () {
//                                     },
//                                     child: GestureDetector(
//                   onTap: () => showAdaptiveActionSheet(
//                         context: context,
//                         title: CustomerTextN.textButton16BoldBlack('Tùy chọn'),
//                         androidBorderRadius: 30,
//                         actions: <BottomSheetAction>[
//                           BottomSheetAction(
//                               title: Container(
//                                  padding: const EdgeInsets.only(bottom: 20.0),
//                                 decoration: const BoxDecoration(
//     border: Border(
//       bottom: BorderSide( //                   <--- left side
//         color: Colors.black,
//         width: 2.0,
//       ),
//     )
//   ),
//                                 child: Row(children: <Widget>[
//                                   AvaterN.img('https://images.unsplash.com/photo-1425082661705-1834bfd09dca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80', 57, 57, 57),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 5.0),
//                                     child: CustomerTextN.textButton20black(
//                                         'Tên người bạn'),
//                                   )
//                                 ]),
//                               ),
//                               onPressed: (context) {}),
//                           BottomSheetAction(
//                               title: Container(
//                                 child: Row(children: <Widget>[
//                                   Container(
//                                       width: 20, child: const icon_taoalbum()),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 5.0),
//                                     child: CustomerTextN.textButton16Normal(
//                                         'Nhắn tin cho Tên người bạn'),
//                                   )
//                                 ]),
//                               ),
//                               onPressed: (context) {}),
//                           BottomSheetAction(
//                               title: Row(children: <Widget>[
//                                 Container(
//                                     width: 20, child: const icon_chan()),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 5.0),
//                                   child: CustomerTextN.textButton16Normal(
//                                       'Hủy lời mời'),
//                                 )
//                               ]),
//                               onPressed: (context) {}),
//                           BottomSheetAction(
//                               title: Row(children: <Widget>[
//                                 Container(
//                                     width: 20, child: const icon_chan()),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 5.0),
//                                   child: CustomerTextN.textButton16Normal(
//                                       'Hủy kết bạn'),
//                                 )
//                               ]),
//                               onPressed: (context) {}),
//                           BottomSheetAction(
//                               title: Row(children: <Widget>[
//                                 Container(
//                                     width: 20, child: const icon_theodoi()),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 5.0),
//                                   child: CustomerTextN.textButton16Normal(
//                                       'Theo dõi'),
//                                 )
//                               ]),
//                               onPressed: (context) {}),
//                           BottomSheetAction(
//                               title: Row(children: <Widget>[
//                                 Container(
//                                     width: 20, child: const icon_botheodoi()),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 5.0),
//                                   child: CustomerTextN.textButton16Normal(
//                                       'Bỏ theo dõi Anika Dias'),
//                                 )
//                               ]),
//                               onPressed: (context) {}),
//                           BottomSheetAction(
//                               title: Row(children: <Widget>[
//                                 Container(
//                                     width: 20, child: const icon_chan()),
//                                 Expanded(
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(left: 5.0),
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.start,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         CustomerTextN.textButton16Normal(
//                                         'Chặn Roger Vaccaro'),
//                                         CustomerTextN.textButton16NormalWrap(
//                                         'Roger Vaccaro sẽ không thể thấy bạn hoặc liên hệ với bạn trên ITP SECRET'),
                                        
//                                       ],
//                                     )
//                                   ),
//                                 )
//                               ]),
//                               onPressed: (context) {}),
//                         ],
//                         cancelAction: CancelAction(
//                             title: CustomerTextN.textButton16Normal(
//                                 'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
//                       ),
//                   child: const icon_bacham1()),
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Expanded(
//                                 flex:1,
//                                 child: CustomerButtonN.ElevatedButtonNBlue('Chấp nhận', null)
//                                 ),
//                                 const SizedBox(width:10),
//                               Expanded(
//                                 flex:1,
//                                 child: CustomerButtonN.ElevatedButtonNGrey('Xóa', null)),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                     const SizedBox(height: 10,)
//               ]
//           )
//                      ),
                   
//                    ),
//               ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: appBarBottom(),
//       floatingActionButton: const floatingBarBottom(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }




import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/tabComponent/tabFriendPage.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';
import 'package:mangxahoi/pages/friend/friendC.dart';
import 'package:mangxahoi/pages/friend/friendHome.dart';
import 'package:mangxahoi/pages/gropus/groupHome.dart';
import 'package:mangxahoi/pages/main/mainPage.dart';
import 'package:mangxahoi/pages/notification/notifiHome.dart';
import 'package:mangxahoi/pages/notification/notifiPage.dart';
import 'package:mangxahoi/pages/personal/personalHome.dart';
import 'package:mangxahoi/pages/watch/watchHome.dart';
import 'package:mangxahoi/thuvien/nav_bottom/curved_navigation_bar.dart';


class friendPageRequire extends StatefulWidget {
  @override
  _friendPageRequireState createState() => _friendPageRequireState();
}

class _friendPageRequireState extends State<friendPageRequire> {
  int _page = 2;
  
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    
    
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
        bottomNavigationBar: CurvedNavigationBar(
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
          backgroundColor: Colors.grey,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: 
        _page == 0 ? const feedHome() :
              _page == 1 ? const friendC() :
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
                child: appBarComponentHavePlus(tilte: 'Lời mời kết bạn'),
              ));
  }
}

class appBarNotification extends StatelessWidget {
  const appBarNotification({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
              width: setwidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponentHavePlus(tilte: 'Thông báo'),
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


class friendPageRequireC extends StatelessWidget {
  const friendPageRequireC({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setheightthucong = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8,10,8,10),
          child: Column(
              children: <Widget>[
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
                      onPressed:() => showAdaptiveActionSheet(
                        context: context,
                        title: CustomerTextN.textButton16BoldBlack('Sắp xếp'),
                        androidBorderRadius: 30,
                        actions: <BottomSheetAction>[
                          BottomSheetAction(
                              title: Container(
                                child: Row(children: <Widget>[
                                  Container(
                                      width: 20, child: const icon_boloc()),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: CustomerTextN.textButton16Normal(
                                        'Ngẫu nhiên'),
                                  )
                                ]),
                              ),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_moinhat()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'Lời mời mới nhất trước tiên'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_cunhat()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'Lời mời cũ nhất trước tiên'),
                                )
                              ]),
                              onPressed: (context) {}),
                        ],
                        cancelAction: CancelAction(
                            title: CustomerTextN.textButton16Normal(
                                'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
                      ), 
                      child: CustomerTextN.textButton16blue('Sắp xếp'),
                      )
                  ],
                ),
                
                   Container(
                    height: setheightthucong*0.8-100,
                    // width: setwidthThuCong*0.8,
                     child: 
                     ListView.builder(     
            shrinkWrap: true,
            physics: const ScrollPhysics(),
              itemCount: cinemas.length,
                itemBuilder: (context, index) =>  
                    Column(
                      children: <Widget>[
                     Row(
                  children: <Widget>[
                    AvaterN.img('https://genk.mediacdn.vn/k:thumb_w/640/2015/1-2-1444483204242/nhung-dieu-thu-vi-ve-pikachu-bieu-tuong-cua-pokemon.png', 90.0, 90.0, 100.0, '', 0, false),
                    const SizedBox(width:10),
                    Expanded(
          
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CustomerTextN.textButton18Medium('${cinemas[index].name}'),
                              Row(
                                children: <Widget>[
                                  CustomerTextN.textButton13Grey('2 tuần'),
                                  const SizedBox(width:10),
                                  GestureDetector(
                                    onTap: () {
                                    },
                                    child: GestureDetector(
                  onTap: () => showAdaptiveActionSheet(
                        context: context,
                        title: CustomerTextN.textButton16BoldBlack('Tùy chọn'),
                        androidBorderRadius: 30,
                        actions: <BottomSheetAction>[
                          BottomSheetAction(
                              title: Container(
                                 padding: const EdgeInsets.only(bottom: 20.0),
                                decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide( //                   <--- left side
        color: Colors.black,
        width: 2.0,
      ),
    )
  ),
                                child: Row(children: <Widget>[
                                  AvaterN.img('https://images.unsplash.com/photo-1425082661705-1834bfd09dca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80', 57, 57, 57,  '', 0, false),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: CustomerTextN.textButton20black(
                                        'Tên người bạn'),
                                  )
                                ]),
                              ),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Container(
                                child: Row(children: <Widget>[
                                  Container(
                                      width: 20, child: const icon_taoalbum()),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: CustomerTextN.textButton16Normal(
                                        'Nhắn tin cho Tên người bạn'),
                                  )
                                ]),
                              ),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_chan()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'Hủy lời mời'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_chan()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'Hủy kết bạn'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_theodoi()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'Theo dõi'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_botheodoi()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'Bỏ theo dõi Anika Dias'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_chan()),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        CustomerTextN.textButton16Normal(
                                        'Chặn Roger Vaccaro'),
                                        CustomerTextN.textButton16NormalWrap(
                                        'Roger Vaccaro sẽ không thể thấy bạn hoặc liên hệ với bạn trên ITP SECRET'),
                                        
                                      ],
                                    )
                                  ),
                                )
                              ]),
                              onPressed: (context) {}),
                        ],
                        cancelAction: CancelAction(
                            title: CustomerTextN.textButton16Normal(
                                'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
                      ),
                  child: const icon_bacham1()),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                flex:1,
                                child: CustomerButtonN.ElevatedButtonNBlue('Chấp nhận', null)
                                ),
                                const SizedBox(width:10),
                              Expanded(
                                flex:1,
                                child: CustomerButtonN.ElevatedButtonNGrey('Xóa', null)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                    const SizedBox(height: 10,)
              ]
          )
                     ),
                   
                   ),
              ],
          ),
        ),
      );
  }
}