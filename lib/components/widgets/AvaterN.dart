import 'package:flutter/material.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';

class AvaterN {
  static Widget avatar40(String data) {
    return CircleAvatar(
      backgroundImage: AssetImage(data),
      radius: 20,
      // onBackgroundImageError: (e, s) {
      //   debugPrint('Lỗi ảnh, $e,$s');
      // },
    );
  }

  static Widget img50(String data) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(data),
        ),
      ),
    );
  }
  static Widget img(String url, double height, double width, double radius, String name, double fontSize, bool story){
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          padding: story ? const EdgeInsets.all(3.0) : const EdgeInsets.all(0),
          decoration: BoxDecoration(     
            
            borderRadius: BorderRadius.circular(radius),       
            border: Border.all(
              width: story ? 5 : 0,
              color: story ? Colors.blueAccent : const Color.fromARGB(0, 68, 137, 255)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(url),
            ),
          ),
        ),
        Container(
          child: CustomerTextN.textThuCong(name, fontSize),
        ),
      ],
    );
  }

  static Widget img300(String data) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(data),
        ),
      ),
    );
  }
}
