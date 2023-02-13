import 'package:flutter/material.dart';
import 'package:mangxahoi/components/appBar/popUpSelected.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';

class appBarComponent extends StatelessWidget {
  const appBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const icon_Logo(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ButtonThem(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: icon_search(),
            ),
            icon_tinnhan(),
          ],
        ),
      ],
    );
  }
}
class appBarComponentCreate extends StatelessWidget {
  const appBarComponentCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: const<Widget>[
             icon_Logo(),
             SizedBox(width: 5,),
            icon_trove(),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomerTextN.textButton13blue('Đăng bài'),
          ],
        ),
      ],
    );
  }
}
class appBarComponentHavePlus extends StatefulWidget {
  final String tilte;
  const appBarComponentHavePlus({required this.tilte, super.key});

  @override
  State<appBarComponentHavePlus> createState() => _appBarComponentHavePlusState();
}

class _appBarComponentHavePlusState extends State<appBarComponentHavePlus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: const <Widget>[
            icon_Logo(),
            SizedBox(width: 10,),
            icon_trove(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Center(child: CustomerTextN.textButton18BoldlBlack(widget.tilte))
        ],),
    Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            ButtonThem(),
            SizedBox(width: 10,),
            icon_search(),
            SizedBox(width: 10,),
            icon_tinnhan(),
          ],
        ),
      ],
    );
  }
}
