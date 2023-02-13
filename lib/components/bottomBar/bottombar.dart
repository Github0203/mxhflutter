import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/thuvien/nav_bottom/curved_navigation_bar.dart';





class bottombarC extends StatefulWidget {
      int indexC;
      // int pageC;
  GlobalKey keyC;
  bottombarC({required this.indexC,  required this.keyC, super.key});

  @override
  State<bottombarC> createState() => _bottombarCState();
}

class _bottombarCState extends State<bottombarC> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  

  @override
  Widget build(BuildContext context) {
  final data = IDPageClass.pageClass;


    return Container(
          decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
          child: CurvedNavigationBar(
            key: widget.keyC,
            index: widget.indexC,
            height: 60.0,
            items: <Widget>[
              const Icon(Icons.home, size: 30),            
              const Icon(Icons.person_add, size: 30),
              const Icon(Icons.videocam, size: 30),
              const Icon(Icons.groups, size: 30),
              // Icon(Icons.perm_identity, size: 30),
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
                        ),
            ],
            color: Colors.white,
            buttonBackgroundColor: Colors.lightBlueAccent,
            backgroundColor: Color.fromARGB(255, 117, 80, 80),
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                IDPageClass.pageClass = index;
                // ignore: avoid_print
                // print(IDPageClass.pageClass);
              });
            },
            letIndexChange: (index) => true,
          ),
        );
  }
}



class IDPageClass {
    static  int pageClass = 0;
}


