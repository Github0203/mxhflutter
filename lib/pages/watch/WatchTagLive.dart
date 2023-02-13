import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/emojiAndshare.dart';
import 'package:mangxahoi/pages/watch/videoitems/videoitems.dart';

import 'package:mangxahoi/thuvien/livestream/zego_uikit_prebuilt_live_streaming.dart';
final String localUserID = Random().nextInt(10000).toString();

class WatchTagLive extends StatefulWidget {
  const WatchTagLive({super.key});

  @override
  State<WatchTagLive> createState() => _WatchTagLiveState();
}

class Video {
  String? name;
  int? price;

  Video({this.name, this.price});
}

List cinemas = [
  Video(name: "kingkong", price: 25),
  Video(name: "hanuman", price: 25),
  Video(name: "kingkong", price: 25),
  Video(name: "hanuman", price: 25),
];

class _WatchTagLiveState extends State<WatchTagLive> {
  bool more = false;
  void onSave1(int? onSave) {
    setState(() {});
  }

final liveTextCtrl =
      TextEditingController(text: Random().nextInt(10000).toString());

  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;
    double setheightThuCong = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomerTextN.textButton18BoldlBlue(
                          '+ Tạo video trực tiếp'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: more ? cinemas.length : 2,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                16,
                                        //  height: 250,
                                        child: Container(
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: <Widget>[
                                                Stack(
                                                   alignment: Alignment.center,
                                                  children: <Widget>[          
                                                    const videoitems(),
                                                    Expanded(
                                                      child: Container(
                                                        width: setwidthThuCong-16,
                                                        height: 200,
                                                        color:
                                                            Color.fromARGB(92, 255, 255, 255),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  child: GestureDetector(
                                                    onTap: () => jumpToLivePage(
                context,
                liveID: liveTextCtrl.text,
                // isHost: true, // true là tạo livestream
                isHost: true, // false là xem livestream
              ),
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: Color.fromARGB(166, 192, 55, 55),
                                                          shape:
                                                              BoxShape.rectangle,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          7.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          7.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          7.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          7.0)),
                                                        ),
                                                        width: 126,
                                                        // height: 30,
                                                        child: Expanded(
                                                          child: Column(
                                                              children: const <
                                                                  Widget>[
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child:
                                                                      ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius
                                                                                  .only(
                                                                            bottomRight:
                                                                                Radius.circular(7.0),
                                                                            bottomLeft:
                                                                                Radius.circular(7.0),
                                                                          ),
                                                                          child: Text(
                                                                              'Đang phát', style:  TextStyle(
                                                              fontSize: 13.0,
                                                              color: Colors.white,),)),
                                                                ),
                                                              ]),
                                                        )),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            AvaterN.img(
                                                'https://genk.mediacdn.vn/k:thumb_w/640/2015/1-2-1444483204242/nhung-dieu-thu-vi-ve-pikachu-bieu-tuong-cua-pokemon.png',
                                                35,
                                                35,
                                                35,  '', 0, false),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    CustomerTextN
                                                        .textButton18BoldlBlack(
                                                            'Tên nhóm'),
                                                    const SizedBox(width: 10),
                                                    CustomerTextN
                                                        .textButton16blue(
                                                            'Theo dõi'),
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    CustomerTextN
                                                        .textButton16Normal(
                                                            '29 phút trước'),
                                                    const SizedBox(width: 5),
                                                    CustomerTextN
                                                        .textButton16Normal(
                                                            '.'),
                                                    const SizedBox(width: 5),
                                                    CustomerTextN
                                                        .textButton16Normal(
                                                            '76'),
                                                    const SizedBox(width: 5),
                                                    const icon_hienthi(),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                              width: setwidthThuCong,
                              child: const DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
jumpToLivePage(BuildContext context,
      {required String liveID, required bool isHost}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LivePage(liveID: liveID, isHost: isHost),
      ),
    );
  }
}






// integrate code :
class LivePage extends StatelessWidget {
  final String liveID;
  final bool isHost;

  const LivePage({
    Key? key,
    required this.liveID,
    this.isHost = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: 178955277,
        appSign: '00dd2b0798472a81f932f373fe4daee7596fb0e1f2b48c78679c67b3e3d58a61',
        userID: localUserID,
        userName: 'user_$localUserID',
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}

