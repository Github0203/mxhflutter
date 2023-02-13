import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/gropus/MygroupTag.dart';
import 'package:mangxahoi/pages/watch/WatchTagGroup.dart';
import 'package:mangxahoi/pages/watch/WatchTagHome.dart';
import 'package:mangxahoi/pages/watch/WatchTagLive.dart';
import 'package:mangxahoi/pages/watch/WatchTagSave.dart';
import 'package:mangxahoi/pages/watch/livestream.dart';
import 'package:mangxahoi/pages/watch/videoitems/pages/picture_in_picture_page.dart';
import 'package:mangxahoi/pages/watch/videoitems/pages/welcome_page.dart';

class tabGroupPage extends StatefulWidget {
  const tabGroupPage({super.key});

  @override
  State<tabGroupPage> createState() => _tabGroupPageState();
}

class _tabGroupPageState extends State<tabGroupPage> {
  final ScrollController controller = ScrollController();

  @override
Widget build(BuildContext context) {

 final _kTabPages = <Widget>[
  //  const WatchTagHome(),
  const MygroupTag(),
  const WatchTagLive(),
 ];
 final _kTabs = <Tab>[
   const Tab(text: 'Nhóm của tôi'),
   const Tab(text:'Nhóm đã thích'),
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
      alignment: Alignment.topLeft,
       child: TabBarView(
         children: _kTabPages,
       ),
     ),
   ),
 );
}
}


