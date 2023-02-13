import 'package:flutter/material.dart';
import 'package:mangxahoi/components/widgets/InputTextWidget.dart';
import 'package:mangxahoi/pages/createPost/createPostDetail.dart';

class howdoyouthinkComponent extends StatelessWidget {
  const howdoyouthinkComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;
    return GestureDetector(
            onTap: () {
              Navigator.push(
    context,
    PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => const createPostDetail(),
        transitionDuration: const Duration(seconds: 0),
    ),
  );
                        },
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1671031990999-77f3bd7e9731?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")),
              ),
            ),
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
              child: Container(
                width: setwidththucong * 0.8,
                child: const TextField(
                  readOnly: true,
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(
                        10, 5, 10, 5), // add padding to adjust text
                    isDense: true,
                    hintText: "Bạn đang nghĩ gì thế?",
                    //prefixIcon: Icon(Icons.edit), // this is left side
                    suffixIcon: Icon(
                      Icons.image,
                      color: Colors.green,
                      size: 30,
                    ), // this is right side.
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
