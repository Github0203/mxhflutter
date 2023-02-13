import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/watch/WatchTagGroup.dart';
import 'package:mangxahoi/pages/watch/WatchTagHome.dart';
import 'package:mangxahoi/pages/watch/WatchTagLive.dart';
import 'package:mangxahoi/pages/watch/WatchTagSave.dart';
import 'package:mangxahoi/pages/watch/livestream.dart';
import 'package:mangxahoi/pages/watch/videoitems/pages/picture_in_picture_page.dart';
import 'package:mangxahoi/pages/watch/videoitems/pages/welcome_page.dart';

class tabWatchPage extends StatefulWidget {
  const tabWatchPage({super.key});

  @override
  State<tabWatchPage> createState() => _tabWatchPagetState();
}

class _tabWatchPagetState extends State<tabWatchPage> {
  final ScrollController controller = ScrollController();

  @override
Widget build(BuildContext context) {

 final _kTabPages = <Widget>[
  //  const WatchTagHome(),
  const WatchTagHome(),
  const WatchTagLive(),
  const WatchTagSave(),
  const WatchTagGroup(),
 ];
 final _kTabs = <Tab>[
   const Tab(text: 'Trang chủ'),
   const Tab(text:'Trực tiếp'),
   const Tab(text:'Video đã lưu'),
   const Tab(text:'Nhóm'),
 ];

  //  _buildTabFriend(int lineCount) => Container(
  //       child: ListView.builder(
  //         physics: const ClampingScrollPhysics(),
  //         itemCount: lineCount,
  //         itemBuilder: (BuildContext context, int index) {
  //           return const WatchTag();
  //         },
  //       ),
  //     );
  double setheightthucong = MediaQuery.of(context).size.height;
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
    //  body: TabBarView(
    //         children: [_buildTabFriend(1)],
    //       ),
     body: Align(
      alignment: Alignment.centerLeft,
       child: Container(
                    height: setheightthucong*0.8-10,
         child: TabBarView(
           children: _kTabPages,
         ),
       ),
     ),
   ),
 );
}
}


