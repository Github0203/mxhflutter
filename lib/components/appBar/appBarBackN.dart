import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';

class appBarN {
  static Widget appBarNotSave(String data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const icon_trove(),
        Expanded(
            child: Center(child: CustomerTextN.textButton16NormalBlack(data))),
      ],
    );
  }

  static Widget appBarHaveSave(String data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            const icon_trove(),
            Expanded(
            child: Center(child: CustomerTextN.textButton16NormalBlack(data))),
          ],
        ),
        CustomerTextN.textButton13blue('Lưu'),
      ],
    );
  }

}
