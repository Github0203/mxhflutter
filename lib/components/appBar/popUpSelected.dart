import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/createPost/createPostDetail.dart';
import 'package:mangxahoi/pages/feeds/createStoriesShortcut.dart';
import 'package:mangxahoi/pages/watch/livestream.dart';
import 'package:mangxahoi/thuvien/popover/popover.dart';
// import 'package:mangxahoi/thuvien/stories_edittor/stories_editor.dart';
import 'package:share_plus/share_plus.dart';



class popUpSelected extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Popover Example')),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: const <Widget>[
                    ButtonThem(),
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

class ButtonThem extends StatelessWidget {
 const ButtonThem({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: const phimtatthem(),
        onTap: () {
          showPopover(
            context: context,
            bodyBuilder: (context) => ListItems(),
            // onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.top,
            barrierColor: Color.fromARGB(0, 255, 255, 255),
            backgroundColor: Colors.white,
            width: 200,
            height: 120,
            arrowHeight: 15,
            arrowWidth: 30,
          );
        },
      );
  }
}

class ListItems extends StatelessWidget {
  ListItems({Key? key}) : super(key: key);
    final liveTextCtrl =
      TextEditingController(text: Random().nextInt(10000).toString());

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Row(
              children: <Widget>[
                const Icon(Icons.edit, size: 18),
                const SizedBox(width:5),
                GestureDetector(
                  onTap: () {
                      Navigator.push(
    context,
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => const createPostDetail(),
        transitionDuration: const Duration(seconds: 0),
    ),
  );
                      },
                  child: CustomerTextN.textButton13Normal('Đăng tin'))
              ],
            ),
            const Divider(),
            Row(
                children: <Widget>[
                  const Icon(Icons.book, size: 18),
                  const SizedBox(width:5),
                  GestureDetector(                    
                     onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => StoriesEditor(
              //               giphyKey: 'C4dMA7Q19nqEGdpfj82T8ssbOeZIylD4',
              //               //fontFamilyList: const ['Shizuru', 'Aladin'],
              //               galleryThumbnailQuality: 300,
              //               //isCustomFontList: true,
              //               onDone: (uri) {
              //                 debugPrint(uri);
              //                 Share.shareFiles([uri]);
              //               },
              //             )));
            },
                    child: CustomerTextN.textButton13Normal('Tin'))
                ],
              ),
            const Divider(),
            Row(
                children: <Widget>[
                  const Icon(Icons.video_collection, size: 18),
                  const SizedBox(width:5),
                  GestureDetector(
                    onTap: () => jumpToLivePage(
                context,
                liveID: liveTextCtrl.text,
                // isHost: true, // true là tạo livestream
                isHost: true, // false là xem livestream
              ),
                    child: CustomerTextN.textButton13Normal('Phát trực tiếp'))
                ],
              ),
            const Divider(),
          ],
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

