import 'dart:math';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/emojiAndshare.dart';
import 'package:mangxahoi/pages/watch/videoitems/videoitems.dart';

import 'package:mangxahoi/thuvien/livestream/zego_uikit_prebuilt_live_streaming.dart';
final String localUserID = Random().nextInt(10000).toString();

class WatchTagSave extends StatefulWidget {
  const WatchTagSave({super.key});

  @override
  State<WatchTagSave> createState() => _WatchTagSaveState();
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

class _WatchTagSaveState extends State<WatchTagSave> {
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
                                                  children: const <Widget>[          
                                                    videoitems(),
                                                    // Expanded(
                                                    //   child: Container(
                                                    //     width: setwidthThuCong-16,
                                                    //     height: 200,
                                                    //     color:
                                                    //         Color.fromARGB(92, 255, 255, 255),
                                                    //   ),
                                                    // ),
                                                  ],
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
                                         GestureDetector(
                                          onTap: () => showAdaptiveActionSheet(
                                            context: context,
                                            title: CustomerTextN
                                                .textButton16BoldBlack(
                                                    'Tùy chọn'),
                                            androidBorderRadius: 30,
                                            actions: <BottomSheetAction>[
                                              BottomSheetAction(
                                                  title: Container(
                                                    child:
                                                        Row(children: <Widget>[
                                                      Container(
                                                          width: 20,
                                                          child:
                                                              const icon_kholuutru()),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 5.0),
                                                        child: CustomerTextN
                                                            .textButton16Normal(
                                                                'Lưu bài viết'),
                                                      )
                                                    ]),
                                                  ),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_bokholuutru()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Bỏ lưu bài viết'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_anbaiviet()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Ẩn bài viết'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_theodoi()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Theo dõi nhóm'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_botheodoi()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Bỏ theo dõi nhóm'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(  
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_thoat()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Rời khỏi nhóm'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_tatbinhluan()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Tắt tính năng bình luận'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_xoataikhoan()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Cho vào thùng rác'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_lichsu()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Xem lịch sử chỉnh sửa'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_chinhsua()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Chỉnh sửa bài viết'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_tatthongbao()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Tắt thông báo từ “Tên nhóm"'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_thongbao()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Bật thông báo từ “Tên nhóm"'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_lienketchiase()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Sao chép liên kết'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_gothe()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Gỡ thẻ bài viết (nếu được gắn thẻ)'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                              BottomSheetAction(
                                                  title: Row(children: <Widget>[
                                                    Container(
                                                        width: 20,
                                                        child:
                                                            const icon_baocao()),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: CustomerTextN
                                                          .textButton16Normal(
                                                              'Báo cáo về bài viết này'),
                                                    )
                                                  ]),
                                                  onPressed: (context) {}),
                                            ],
                                            cancelAction: CancelAction(
                                                title: CustomerTextN
                                                    .textButton16Normal(
                                                        'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
                                          ),
                                          child: const icon_bachammautrang(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const emojiAndshare(),
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

