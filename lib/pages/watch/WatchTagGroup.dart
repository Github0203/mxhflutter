import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/emojiAndshare.dart';
import 'package:mangxahoi/pages/watch/videoitems/videoitems.dart';
import 'package:readmore/readmore.dart';

class WatchTagGroup extends StatefulWidget {
  const WatchTagGroup({super.key});

  @override
  State<WatchTagGroup> createState() => _WatchTagGroupState();
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

class _WatchTagGroupState extends State<WatchTagGroup> {
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
              children: [
                Container(
                  decoration: BoxDecoration(
          border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.lightBlue.shade900),
          ),
          color: Colors.white,
        ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                        child: Row(
                          children: <Widget>[
                            CustomerTextN.textButton16Medium(
                                'Video mới đăng gần đây'),
                            const SizedBox(
                              width: 10,
                            ),
                            CustomerTextN.textButton16blue('2'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                        child: Row(
                          children: <Widget>[
                            CustomerTextN.textButton16BoldBlack('Nhóm'),
                            const SizedBox(
                              width: 10,
                            ),
                            CustomerTextN.textButton16blue('2'),
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
                                          CustomerTextN.textButton16Normal(
                                              'Tiêu đề video'),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                width: 10,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.blue,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              CustomerTextN.textButton16gey(
                                                  '2 giờ trước'),
                                            ],
                                          ),
                                        ],
                                      ),
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
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                    child: Row(
                      children: <Widget>[
                        CustomerTextN.textButton16BoldBlack('Nhóm'),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomerTextN.textButton16blue('2'),
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
                                          '${cinemas[index].name}'),                  ],
                                  ),
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
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
