

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/bottomBar/bottombar.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/tabComponent/tabFriendPage.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';
import 'package:mangxahoi/pages/friend/friendHome.dart';
import 'package:mangxahoi/pages/gropus/MygroupTag.dart';
import 'package:mangxahoi/pages/gropus/groupHome.dart';
import 'package:mangxahoi/pages/main/mainPage.dart';
import 'package:mangxahoi/pages/personal/personalHome.dart';
import 'package:mangxahoi/pages/watch/WatchTagGroup.dart';
import 'package:mangxahoi/pages/watch/watchHome.dart';
import 'package:mangxahoi/thuvien/nav_bottom/curved_navigation_bar.dart';
import 'package:mangxahoi/components/bottomBar/bottombar.dart';



class notifiC extends StatefulWidget {   
  const notifiC({super.key});

  @override
  State<notifiC> createState() => _notifiCState();
}

class People {
  String? name;
  String? seened;
  String? notseen;
  int? ind;

  People({
    this.name, 
    this.seened, 
    this.notseen, 
    this.ind,
    });
}

List peoples = [
  People(
    name: "Minh Ngọc",
    seened: "1" ,
    notseen: '' ,
    ind: 0
    ),
  People(
    name: "Hồng Anh", 
    seened: "1" ,
    notseen: '' ,
    ind: 0
    ),
  People(
    name: "Diên Vỹ", 
    seened: "0" ,
    notseen: '1' ,
    ind: 1
    ),
];

class _notifiCState extends State<notifiC> {
  bool chuadoc = false;
  bool dadochet = false;
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomerTextN.textThuCong('Thông báo', 14),
                  GestureDetector(
                  child: const icon_bacham(),
                  onTap: () => showAdaptiveActionSheet(
                        context: context,
                        title: CustomerTextN.textButton16BoldBlack('Tùy chọn'),
                        androidBorderRadius: 30,
                        actions: <BottomSheetAction>[
                          BottomSheetAction(
                              title: Container(
                                child: Row(children: <Widget>[
                                  // Container(
                                  //     width: 20, child: const icon_boloc()),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          dadochet = true;
                                        });
                                      },
                                      child: CustomerTextN.textButton16Normal(
                                          'Xóa hết thông báo'),
                                    ),
                                  )
                                ]),
                              ),
                              onPressed: (context) {}),
                        ],
                        cancelAction: CancelAction(
                            title: CustomerTextN.textButton16Normal(
                                'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
                      ), 
                     
                ),
                ],
               ),
               const SizedBox(height: 10,),
               ListView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemCount: dadochet == false ? peoples.length : 1,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(bottom: 0.0),
                                child: 
                                // ignore: unnecessary_null_comparison
                                peoples == null || dadochet ?
                                CustomerTextN.textButton13Grey('Không có thông báo nào') 
                                :
                                peoples[index].seened == '1' ?
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Container(
                                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
             color: peoples[index].seened == '1' ?   Colors.blue[100] :  const Color.fromARGB(0, 187, 222, 251),
          ),                   
                                      padding: peoples[index].seened == '0' ?  const EdgeInsets.all( 0) : const EdgeInsets.all( 5),
                                     
                                      
                                      child: 
                                      Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AvaterN.img('https://cdn.noron.vn/2021/07/24/90679189766993593-1627114254_1024.jpg', 40, 40, 40, '', 0, true),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start  ,
                      children: <Widget>[
                        CustomerTextN.textButton16BoldBlack('${peoples[index].name}'),
                        const SizedBox(height: 5),
                        Container(
                          width: setwidththucong*0.5,
                          child: Flexible(child: CustomerTextN.textButton13Grey('Đã mời bạn tham gia nhóm công khai Nhóm lãnh đạo'))),
                        const SizedBox(height: 5),
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
                const SizedBox(width: 5),
                GestureDetector(
                  child: const icon_bacham1(),
                  onTap: () => showAdaptiveActionSheet(
                        context: context,
                        title: CustomerTextN.textButton16BoldBlack('Tùy chọn'),
                        androidBorderRadius: 30,
                        actions: <BottomSheetAction>[
                          BottomSheetAction(
                              title: Container(
                                  child: Row(children: <Widget>[
                                      // Container(
                                      //     width: 20, child: const icon_boloc()),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0),
                                        child: CustomerTextN.textButton16Normal(
                                            'Gỡ thông báo này'),
                                      )
                                  ]),
                              ),
                              onPressed: (context) {}),
                        ],
                        cancelAction: CancelAction(
                            title: CustomerTextN.textButton16Normal(
                                  'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
                      ), 
                     
                ),
                ],
               ),
                                    
                                    ),
                                )
                                :
                                Container()             
                              ),
                        )

,

              ],
          ),
        ),
      );
  }
}