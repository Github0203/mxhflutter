import 'package:flutter/material.dart';
import 'package:mangxahoi/thuvien/image_collapse.dart';



class getimg extends StatefulWidget {
  const getimg({Key? key}) : super(key: key);



  @override
  _getimgState createState() => _getimgState();
}

class _getimgState extends State<getimg> {
  static const List<String> listOfUrls = [
    "https://img.pikbest.com/png-images/plane-flying-on-location-and-map-with-forest-element_1493374.png!bw340",
    "https://img.pikbest.com/05/81/63/10VpIkbEsT5s3.jpg-0.jpg!bw340",
    "https://img.pikbest.com/01/42/43/44apIkbEsT5gu.jpg-0.jpg!bw340",
    "https://img.pikbest.com/pikbest/pic/00/32/88/08I888piCYQN.jpg-0.jpg!bw340",
  ];

  @override
  Widget build(BuildContext context) {
    return const ImageCollapse(
          key: Key('image_collapse_key'),
          imageUrls: listOfUrls,
        );
  }
}
