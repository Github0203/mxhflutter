import 'package:flutter/material.dart';
import 'package:mangxahoi/components/appBar/appBarBackN.dart';
import 'package:mangxahoi/pages/createPost/objectViewPost.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';

class chooseObjectN extends StatefulWidget {
  const chooseObjectN({super.key});

  @override
  State<chooseObjectN> createState() => _chooseObjectNState();
}

class _chooseObjectNState extends State<chooseObjectN> {
  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setheightthucong = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          SizedBox(
              width: setwidththucong,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarN.appBarNotSave('Đối tượng của bài viết'),
              )),
          // ),
        ],
      ),
      body: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: const objectViewPost()),
    );
  }
}
