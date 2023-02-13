import 'package:flutter/material.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';

class chonlayMKbangEmail extends StatelessWidget {
  const chonlayMKbangEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            'Cung cấp email tài khoản của bạn mà bạn muốn đặt lại mật khẩu của mình',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color:
                            Color.fromARGB(255, 255, 255, 255)), //<-- SEE HERE
                  ),
                  focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.yellow),
      ),
                  labelText: 'Email',
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
