import 'package:flutter/material.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';

enum SingingCharacter { lafayette, jefferson }

class chonCachLayMatKhau extends StatefulWidget {
  const chonCachLayMatKhau({super.key});

  @override
  State<chonCachLayMatKhau> createState() => _chonCachLayMatKhauState();
}

class _chonCachLayMatKhauState extends State<chonCachLayMatKhau> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            'Chọn cách lấy lại mật khẩu',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Yêu cầu liên kết đặt lại mật khẩu'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.lafayette,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title:
                        const Text('Quên mật khẩu sử dụng điện thoại qua mã'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.jefferson,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
