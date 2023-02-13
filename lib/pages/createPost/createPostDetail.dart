import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/createPost/chooseImgFrom.dart';
import 'package:mangxahoi/pages/createPost/chooseObjectN.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';

class createPostDetail extends StatefulWidget {
  const createPostDetail({super.key});

  @override
  State<createPostDetail> createState() => _createPostDetailState();
}

class _createPostDetailState extends State<createPostDetail> {
  int hinhduocchon = 0;

  static final List<Widget> _background = <Widget>[
    Container(
      height: 300,
    ),
    AvaterN.img300(
        'https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
    AvaterN.img300(
        'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
  ];

  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;

    return 
    Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const <Widget>[
          appBarCreate(),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    AvaterN.avatar40(
                        'https://images.unsplash.com/photo-1602491453631-e2a5ad90a131?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Column(
                        children: <Widget>[
                          CustomerTextN.textButton16Normal('Long Trần'),
                          // chọn đối tượng của bài viết
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => const chooseObjectN()));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              // color: Colors.black26,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: <Widget>[
                                  const icon_banbekhongmau(),
                                  CustomerTextN.textButton13Normal('Bạn bè'),
                                  const icon_muiten(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  Container(
                    child: Stack(
                      children: <Widget>[
                        ////// widget hình nền
                        Container(
                          child: Center(
                            child: _background.elementAt(hinhduocchon),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          height: 300,
                          child: Column(
                              mainAxisAlignment: hinhduocchon == 0
                                  ? MainAxisAlignment.start
                                  : MainAxisAlignment.center,
                              children: <Widget>[
                                TextFormField(
                                  decoration: const InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(0, 255, 255, 255)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(0, 255, 255, 255)),
                                    ),
                                    focusColor: Color.fromARGB(0, 255, 255, 255),
                                    labelText: 'Bạn đang nghĩ gì thế?',
                                  ),
                                  // keyboardType: TextInputType.multiline,
                                  minLines: 1, // <-- SEE HERE
                                  maxLines: 6, // <-- SEE HERE
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Color.fromARGB(206, 174, 176, 179)),
                      ),
                      color: Colors.white,
                    ),
                    height: 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 0;
                                  });
                                },
                                child: Container(
                                  child: const icon_nochoose(),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 1;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 2;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 2;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 2;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 2;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 2;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 2;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 2;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hinhduocchon = 2;
                                  });
                                },
                                child: AvaterN.img50(
                                    'https://images.unsplash.com/photo-1470093851219-69951fcbb533?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) => const chooseImgFrom()));
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 1.0,
                                  color: Color.fromARGB(206, 174, 176, 179)),
                            ),
                          ),
                          child: CustomerButtonN.chooseHaveIconandAText(
                              'Thêm ảnh', const icon_album()),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.0, color: Color.fromARGB(206, 174, 176, 179)),
                          ),
                        ),
                        child: CustomerButtonN.chooseHaveIconandAText(
                            'Gắn thẻ người khác', const icon_ganthe()),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.0, color: Color.fromARGB(206, 174, 176, 179)),
                          ),
                        ),
                        child: CustomerButtonN.chooseHaveIconandAText(
                            'Cảm xúc hoạt động', const icon_matcuoi()),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: CustomerButtonN.chooseHaveIconandAText(
                            'Check in', const icon_checkin()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}


class appBarCreate extends StatelessWidget {
  const appBarCreate({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
              width: setwidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponentCreate(),
              ));
  }
}