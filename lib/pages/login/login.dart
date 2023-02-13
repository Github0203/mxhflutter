import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/pages/login/formLogin/formlogin.dart';
import 'package:mangxahoi/pages/login/formLogin/icon_logo.dart';
import 'package:mangxahoi/pages/login/login_recented.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double setWidththucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;
    double setHeightKeyboard = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        Container(
          height: setHeightThuCong,
          width: setWidththucong,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/png/hinhnen.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(
                    top: setWidththucong * 0.1,
                    bottom: setWidththucong * 0.05,
                    left: setWidththucong * 0.05,
                    right: setWidththucong * 0.05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  <Widget>[
                      //////// logo
                      const iconLogoComponent(),
        
                      //////// login recented
                      Padding(
      padding: EdgeInsets.only(
          top: setWidththucong * 0.1,
          bottom: setWidththucong * 0.1,
          left: setWidththucong * 0.05,
          right: setWidththucong * 0.05),
      child: const loginRecented(),
    ),
                      
                      const formLogin(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      
      ]),
    );
  }
}
