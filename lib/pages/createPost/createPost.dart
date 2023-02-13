import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangxahoi/pages/createPost/appBarCreatePost.dart';
import 'package:mangxahoi/pages/createPost/createPostDetail.dart';

class createPost extends StatefulWidget {
  const createPost({super.key});

  @override
  State<createPost> createState() => _createPostState();
}

class _createPostState extends State<createPost> {
  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setheightthucong = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          SizedBox(
              width: setwidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarCreatePost(),
              )),
          // ),
        ],
      ),
      body: const createPostDetail(),
    );
  }
}
