import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/emojiAndshare.dart';
import 'package:mangxahoi/pages/watch/videoitems/videoitems.dart';
import 'package:readmore/readmore.dart';

class MygroupTag extends StatefulWidget {
  const MygroupTag({super.key});

  @override
  State<MygroupTag> createState() => _MygroupTagState();
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

class _MygroupTagState extends State<MygroupTag> {
  bool more = false;
  void onSave1(int? onSave) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;
    double setheightThuCong = MediaQuery.of(context).size.height;

    return Expanded(
      child: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
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
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0,8,8,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomerTextN.textButton18BoldlBlue(
                          '+ Tạo nhóm mới'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemCount: more ? cinemas.length : 2,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: <Widget>[
                              AvaterN.img(
                                  'https://genk.mediacdn.vn/k:thumb_w/640/2015/1-2-1444483204242/nhung-dieu-thu-vi-ve-pikachu-bieu-tuong-cua-pokemon.png',
                                  90.0,
                                  90.0,
                                  100.0,  '', 0, false),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    CustomerTextN.textButton16NormalBlack(
                                        '${cinemas[index].name}'),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Stack(
    children: <Widget>[
      const Icon(Icons.notifications, size: 30.0,),
      Positioned(
        right: 0,
        child: Container(
          padding: EdgeInsets.all(1),
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
                                    const SizedBox(
                                      width: 5,
                                    ),
                                     CustomerTextN.textButton13Normal(
                                        'Thông báo'),
                                        Stack(
    children: <Widget>[
      const Icon(Icons.forum, size: 30.0,),
      Positioned(
        right: 0,
        child: Container(
          padding: EdgeInsets.all(1),
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
                                    const SizedBox(
                                      width: 5,
                                    ),
                                     CustomerTextN.textButton13Normal(
                                        'Tin nhắn'),
                                      ],
                                    ),
                                    ],
                                ),
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
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () => {
                                setState(() {
                                  more = !more;
                                })
                              },
                          child: more
                              ? Row(
                                  children: <Widget>[
                                    CustomerTextN.textButton16blue('Ẩn bớt'),
                                    const RotationTransition(
                                      turns: AlwaysStoppedAnimation(0 / 360),
                                      child: icon_muitenxanh(),
                                    )
                                  ],
                                )
                              : Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                                  child: Row(
                                    children: <Widget>[
                                      CustomerTextN.textButton16blue(
                                          'Xem thêm'),
                                      const RotationTransition(
                                        turns:
                                            AlwaysStoppedAnimation(180 / 360),
                                        child: icon_muitenxanh(),
                                      )
                                    ],
                                  ),
                                )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
