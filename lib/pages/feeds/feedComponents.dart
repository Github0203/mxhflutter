import 'package:flutter/material.dart';
import 'package:mangxahoi/components/appBar/popUpSelected.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/howdoyouthinkComponent.dart';
import 'package:mangxahoi/pages/feeds/postComponent.dart';
import 'package:mangxahoi/pages/feeds/shortcut3cuc.dart';
import 'package:mangxahoi/pages/feeds/storiesFeed.dart';

class feedComponents extends StatelessWidget {
  const feedComponents({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              width: setwidththucong,
              padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: CustomerTextN.textButton18Medium('Stories')),
          Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const storiesFeed()),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: const howdoyouthinkComponent(),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: const  shortcut3cuc(),
          ),
          const postComponent(),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: CustomerTextN.textButton18Medium(
                  'Không còn bài viết nào khác'),
            ),
          )
        ],
      ),
    );
  }
}
