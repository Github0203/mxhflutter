import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class thumbnailLoginRecented extends StatelessWidget {
  const thumbnailLoginRecented({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: 126,
                      height: 142,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7.0),
                          topRight: Radius.circular(7.0),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1670441384415-4680ddc2017e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: icon_dongthumb(),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(7.0),
                                bottomRight: Radius.circular(7.0))),
                        width: 126,
                        child: Expanded(
                          child: Column(children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(7.0),
                                    bottomLeft: Radius.circular(7.0),
                                  ),
                                  child: Text('Minh Ngọc')),
                            ),
                          ]),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
