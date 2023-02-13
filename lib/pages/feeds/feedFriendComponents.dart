import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/friend/friendPage.dart';
import 'package:mangxahoi/pages/friend/friendPageRequire.dart';

class feedFriendComponents extends StatefulWidget {
  
      

  const feedFriendComponents({super.key});

  @override
  State<feedFriendComponents> createState() => _feedFriendComponentsState();
}


class Movie {
 
  String? name;
  int? price;

 Movie({this.name,this.price});

}
  List cinemas = [
    Movie(name:"kingkong",price:25),
    Movie(name:"hanuman",price:25),
    Movie(name:"king polo",price:25),
    Movie(name:"ashiqyue",price:25),
    Movie(name:"hero",price:25),
    Movie(name:"zero",price:25),
    Movie(name:"kilo",price:25),
];


class _feedFriendComponentsState extends State<feedFriendComponents> {
  
  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(8.0),
      height: setHeightThuCong,
      color: Colors.white,
      child: Expanded(
        child: Column(
          children: <Widget>[
            Container(
              height: 40,
              child: Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(10,5,10,5),
                      child: ElevatedButton(
                        child: CustomerTextN.textButton16NormalBlack('Gợi ý'),
                        style: ElevatedButton.styleFrom(    
                primary: Colors.grey,
                shape: const StadiumBorder()
                        ),
                        onPressed: () {},
                      ),
                    ),
                      const SizedBox(width: 10),
                    ElevatedButton(
                        child: CustomerTextN.textButton16NormalBlack('Bạn bè'),
                        style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                shape: const StadiumBorder()
                        ),
                         onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => friendPage()))
        },
                      ),
                  ],
                ),
              ),
            ),
            
            Container(
              height: 40,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,5,0,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                    children: <Widget>[
                      CustomerTextN.textButton16Normal('Lời mời kết bạn'),
                      const SizedBox(width:10),
                      CustomerTextN.textButton16NormalRed('3'),
                    ],
                  ),
                      Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
              MaterialPageRoute(builder: (context) => friendPageRequire()));
                        },
                        child: CustomerTextN.textButton16blue('Xem tất cả')
                        ),
                    ],
                  ),
                    ]
                  ),
                ),
              ),
            ),
      
      
      Expanded(
        child:   Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
              itemCount: cinemas.length,
                itemBuilder: (context, index) =>  
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Row(
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
                        title: const Text('Tùy chọn'),
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
                                  AvaterN.img('https://images.unsplash.com/photo-1425082661705-1834bfd09dca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80', 57, 57, 57, '', 0, false),
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
                                      width: 20, child: const icon_tinnhan()),
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
                )
                    ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}
