import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/watch/livestream.dart';
import 'package:mangxahoi/thuvien/livestream/zego_uikit_prebuilt_live_streaming.dart';


class shortcut3cuc extends StatefulWidget {
  const shortcut3cuc({super.key});

  @override
  State<shortcut3cuc> createState() => _shortcut3cucState();
}

class _shortcut3cucState extends State<shortcut3cuc> {
final liveTextCtrl =
      TextEditingController(text: Random().nextInt(10000).toString());

  @override
  Widget build(BuildContext context) {
    double setweidththucong = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(children: <Widget>[
              const icon_phonghopmat(),
              CustomerTextN.textButton13Normal('Phòng họp mặt'),
            ]),
          ),
          GestureDetector(
                                                    onTap: () => jumpToLivePage(
                context,
                liveID: liveTextCtrl.text,
                // isHost: true, // true là tạo livestream
                isHost: true, // false là xem livestream
              ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(children: <Widget>[
                const icon_video(),
                CustomerTextN.textButton13Normal('Video trực tiếp'),
              ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(children: <Widget>[
              const icon_sukien(),
              CustomerTextN.textButton13Normal('Tạo sự kiện'),
            ]),
          ),
        ],
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


