import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';

class registerSussess extends StatelessWidget {
  const registerSussess({super.key});

  @override
  Widget build(BuildContext context) {
    double setHeightThuCong = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: setHeightThuCong,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const dangkythanhcong(),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  // child: TextWidgetComponent(data: 'Đăng ký thành công'),
                  child: Text(
                    'Đăng ký thành công',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('Đăng nhập',
                          style: TextStyle(fontSize: 16))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
