import 'package:flutter/material.dart';
// import 'package:mangxahoi/thuvien/stories_edittor/stories_editor.dart';
import 'package:share_plus/share_plus.dart';

class createStoriesShortcut extends StatelessWidget {
  const createStoriesShortcut({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => 
              //         StoriesEditor(
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
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(7.0),
              topRight: Radius.circular(7.0),
              bottomLeft: Radius.circular(7.0),
              bottomRight: Radius.circular(7.0),
            )),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: [
                    Column(children: <Widget>[
                      Container(
                        width: 110,
                        height: 100,
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
                      Container(
                        width: 110,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7.0),
                            bottomRight: Radius.circular(7.0),
                          ),
                        ),
                        padding: const EdgeInsets.only(top: 20, bottom: 10),
                        child: const Center(child: Text('Tạo tin')),
                      ),
                    ]),
                    Positioned.fill(
                      bottom: -40.0,
                      child: Align(
                        // alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 9, 138, 212),
                            border: Border.all(color: Colors.white),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
