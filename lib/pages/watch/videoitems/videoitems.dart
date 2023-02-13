import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/watch/videoitems/pages/picture_in_picture_page.dart';

class videoitems extends StatefulWidget {
  const videoitems({super.key});

  @override
  State<videoitems> createState() => _videoitemsState();
}

class _videoitemsState extends State<videoitems> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: PictureInPicturePage(),
    );
  }
}