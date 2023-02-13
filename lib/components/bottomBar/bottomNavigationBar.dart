import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
// import 'package:mangxahoi/home_page.dart';
import 'package:mangxahoi/pages/createPost/createPost.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';
import 'package:mangxahoi/pages/friend/friendHome.dart';
import 'package:mangxahoi/pages/watch/watchHome.dart';


class appBarBottom extends StatefulWidget {
  const appBarBottom({super.key});

  @override
  State<appBarBottom> createState() => _appBarBottomState();
}

class _appBarBottomState extends State<appBarBottom> {
  
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 50.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                        Navigator.push(
    context,
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => const feedHome(),
        transitionDuration: const Duration(seconds: 0),
    ),
  );
                        },
                        child: const icon_bangtin(),
                      ),
                      GestureDetector(
                          onTap: () {
  Navigator.push(
    context,
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => friendHome(),
        transitionDuration: const Duration(seconds: 0),
    ),
  );
},
                          child: const icon_themban()),
                      GestureDetector(
                        onTap: () {
                            Navigator.push(
    context,
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => const watchHome(),
        transitionDuration: const Duration(seconds: 0),
    ),
  );
                        },
                        child: const icon_videofeed(),
                      ),
                    ],
                  ),
                ),
                Expanded(flex: 3, child: Container()),
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const icon_nhom(),
                      const icon_thongbao(),
                      Stack(
                        children: const <Widget>[
                          icon_ava(),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: icon_menunho(),
                            ),
                          ),
                        ],
                        // children: [
                        //   icon_ava(),
                        //   icon_menunho(),
                        // ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}


class floatingBarBottom extends StatefulWidget {
  const floatingBarBottom({super.key});

  @override
  State<floatingBarBottom> createState() => _floatingBarBottomState();
}

class _floatingBarBottomState extends State<floatingBarBottom> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () => {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => const createPost()))
          Navigator.push(
              context, CupertinoPageRoute(builder: (_) => const createPost()))
        },
        tooltip: 'Tạo bài viết mới',
        child: const Icon(Icons.add),
      );
  }
}