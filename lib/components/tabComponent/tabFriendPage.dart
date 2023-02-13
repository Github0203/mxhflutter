import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:overlay_group_avatar/overlay_group_avatar.dart';

class tabFriendPage extends StatefulWidget {
  const tabFriendPage({super.key});

  @override
  State<tabFriendPage> createState() => _tabFriendPagetState();
}

class _tabFriendPagetState extends State<tabFriendPage> {
  final ScrollController controller = ScrollController();

  @override
Widget build(BuildContext context) {

 final _kTabPages = <Widget>[
   const Friendtab(),
   const Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
   const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
 ];
 final _kTabs = <Tab>[
   const Tab(text: 'Bạn bè'),
   const Tab(text:'Người theo dõi'),
   Tab(text:'Người đang theo dõi'),
 ];

   _buildTabFriend(int lineCount) => Container(
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: lineCount,
          itemBuilder: (BuildContext context, int index) {
            return const Friendtab();
          },
        ),
      );
 return DefaultTabController(
   length: _kTabs.length,
   child: Scaffold(
     appBar: PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
       child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
       automaticallyImplyLeading: false,
        bottom: TabBar(
          labelColor: Colors.blue,
          indicatorColor: Colors.blue,
          isScrollable: true,
           tabs: _kTabs,
         ),
        ),
     ),
     body: TabBarView(
            children: [_buildTabFriend(1)],
          ),
    //  body: TabBarView(
    //    children: _kTabPages,
    //  ),
   ),
 );
}
}


class Friendtab extends StatefulWidget {
  const Friendtab({super.key});
  

  @override
  State<Friendtab> createState() => _FriendtabState();
}

class Friend {
 
  String? name;
  int? price;

 Friend({this.name,this.price});

}
  List cinemas = [
    Friend(name:"kingkong",price:25),
    Friend(name:"hanuman",price:25),
    Friend(name:"king polo",price:25),
    Friend(name:"ashiqyue",price:25),
    Friend(name:"hero",price:25),
    Friend(name:"zero",price:25),
    Friend(name:"kilo",price:25),
];

class _FriendtabState extends State<Friendtab> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListView.builder(     
            shrinkWrap: true,
            physics: const ScrollPhysics(),
              itemCount: cinemas.length,
                itemBuilder: (context, index) =>  
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AvaterN.img('https://vcdn1-giaitri.vnecdn.net/2020/11/16/doraemon-4436-1605499376.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=vyYUjlQ2YCw-s1EiiY45dQ', 90, 90, 90,  '', 0, false),
                  const SizedBox(width: 10,),
                   Expanded(
                     child: Column(
                      children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                              CustomerTextN.textButton18Medium('${cinemas[index].name}'),
                          GestureDetector(
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
                                      'Hủy kết bạn'),
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
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                         Container(
                          width: MediaQuery.of(context).size.width*0.2,
                          height: 40,
                           child: Padding(
                             padding: const EdgeInsets.fromLTRB(8,0,0,0),
                             child: OverlapAvatar(
                                    
                                    itemCount: 2,
                                   insideRadius : 18, ///Determines how much in radius [Default value: 20]
                                   outSideRadius: 20, ///[outsideRadius must be gretter then insideRadius]Determines how much in radius [Default value: 24] 
                                    widthFactor : 0.6 ,///  Determines how much in horizontal they should overlap.[Default value: 0.6]
                                   backgroundImage:  const NetworkImage(
                                   'https://vcdn1-giaitri.vnecdn.net/2020/11/16/doraemon-4436-1605499376.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=vyYUjlQ2YCw-s1EiiY45dQ',
                                   ),
                                   // backgroundColor : Colors.white
                               ),
                           ),
                         ),
    CustomerTextN.textButton16Normal('2 bạn chung')
                        ],
                      ),
                      ],
                     ),
                   ),
                ],
              ),
          const SizedBox(height: 10,)
            
            ],
          ),  
          ),
        ],
      ),
    );
  }
}