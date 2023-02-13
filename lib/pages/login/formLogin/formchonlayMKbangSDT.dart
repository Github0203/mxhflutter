import 'package:flutter/material.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/pages/login/formLogin/intl_phone_field.dart';

class chonlayMKbangSDT extends StatelessWidget {
  const chonlayMKbangSDT({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            'Cung cấp số điện thoại mà bạn muốn đặt lại mật khẩu',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              // child: TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(90.0),
              //     ),
              //     enabledBorder: const OutlineInputBorder(
              //       borderSide: BorderSide(
              //           width: 1,
              //           color:
              //               Color.fromARGB(255, 255, 255, 255)), //<-- SEE HERE
              //     ),
              //     labelText: 'Email',
              //   ),
              // ),
              child: IntlPhoneField(),
            ),
          ],
        )
      ],
    );
  }
}
