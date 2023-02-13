import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mangxahoi/components/widgets/ButtonComponentMauXanhDam.dart';
import 'package:mangxahoi/components/widgets/ButtonComponentMauXanhTrang.dart';
import 'package:mangxahoi/components/widgets/InputTextWidget.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:mangxahoi/pages/feeds/feedComponents.dart';
import 'package:mangxahoi/pages/login/formLogin/loginGoogle.dart';
import 'package:mangxahoi/pages/main/mainPage.dart';
// import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import '../../../components/widgets/ButtonComponentMauChinh.dart';
import '../../feeds/feedPage.dart';

class formLogin extends StatefulWidget {
  const formLogin({super.key});

  @override
  State<formLogin> createState() => _formLoginState();
}

// ignore: camel_case_types
class _formLoginState extends State<formLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  bool _visiblePassword = false;
  bool _hienloi = false;
  String? _email = "";
  String? _password = "";
  String? sogiay = "";
  // ignore: unused_field
  final String _error = "Email hoặc pass bị sai";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Text('Welcome to my Familys',
                  style: TextStyle(color: Colors.white, fontSize: 23)),
            ),
            // textfield Email
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //// lỗi khi sai email hoặc mật khẩu
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: Text(
                          _hienloi ? "Email hoặc pass bị sai" : "",
                          style: const TextStyle(
                              color: Color.fromARGB(186, 244, 67, 54)),
                        )),
                    //// nhập Email
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                      child: InputTextWidgetComponent(
                        cursorColor: Colors.white,
                        labelText: 'Email',
                        hintText: 'Email',
                        readOnly: false,
                        textEditingController: _emailTextEditingController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onChanged: (value) {
                          setState(() {
                            _email = value!;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Chưa nhập Email';
                          } else if (RegExp(
                                      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                  .hasMatch(value) ==
                              false) {
                            return "Email chưa hợp lệ";
                          }
                          return null;
                        },
                        // decoration: InputDecoration(
                        //   suffixIcon: IconButton(
                        //     icon: Icon(
                        //       // Based on passwordVisible state choose the icon
                        //       _visiblePassword
                        //           ? Icons.visibility
                        //           : Icons.visibility_off,
                        //       color: Colors.transparent,
                        //     ), onPressed: () {  },
                        // )),
                      ),
                    ),

                    //// nhập Password
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: InputTextWidgetComponent(
                        obscureText: !_visiblePassword,
                        labelText: 'Mật khẩu',
                        hintText: 'Mật khẩu',
                        readOnly: false,
                        textEditingController: _passwordTextEditingController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (value) {
                          setState(() {
                            _password = value!;
                          });
                        },
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return "Chưa nhập mật khẩu";
                          } else if (password == '123') {
                            return "Mật khẩu đúng rồi";
                          } else {
                            return 'Mật khẩu chưa đúng';
                          }
                        },
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _visiblePassword = !_visiblePassword;
                            });
                          },
                          child: Icon(
                            _visiblePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/forgetpass');
                          },
                          child: const Text(
                            'Quên mật khẩu?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ],
                    ),
                    ButtonComponentMauChinh(
                      onPressed: () {
                        if (_email == 'a' && _password == '123') {
                          setState(() {
                            _hienloi = false;
                          });

                          Timer(
                              const Duration(seconds: 5),
                              () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage())));

                          // Countdown(
                          //   seconds: 5,
                          //   build: (BuildContext context, double time) =>
                          //       Text(time.toString()),
                          // );

                          // AwesomeDialog(
                          //   context: context,
                          //   animType: AnimType.topSlide,
                          //   headerAnimationLoop: true,
                          //   dialogType: DialogType.success,
                          //   showCloseIcon: true,
                          //   title: 'Đăng nhập thành công',
                          //   desc:
                          //       'Đăng nhập thành công, bạn sẽ được chuyển tới trong....',
                          //   body: Countdown(
                          //     seconds: 5,
                          //     build: (BuildContext context, double time) =>
                          //         Text(time.toString()),
                          //   ),
                          //   btnOkIcon: Icons.check_circle,
                          //   onDismissCallback: (type) {
                          //     debugPrint('Dialog Dissmiss from callback $type');
                          //   },
                          // ).show();

                          AwesomeDialog(
                            context: context,
                            animType: AnimType.leftSlide,
                            headerAnimationLoop: false,
                            dialogType: DialogType.success,
                            showCloseIcon: true,
                            title: 'Succes',
                            desc:
                                'Đăng nhập thành công, bạn sẽ được chuyển tới trong........',
                            body: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                      'Đăng nhập thành công, bạn sẽ được chuyển tới trong........'),
                                ),
                                Countdown(
                                  seconds: 5,
                                  build: (BuildContext context, double time) =>
                                      Text(time.toString()),
                                  // interval: Duration(milliseconds: 100),
                                  // onFinished: () {
                                  //   print('Timer is done!');
                                  // },
                                ),
                              ],
                            ),
                            btnOkOnPress: () {
                              // debugPrint('OnClcik');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            btnOkIcon: Icons.check_circle,
                            onDismissCallback: (type) {
                              debugPrint('Dialog Dissmiss from callback $type');
                            },
                          ).show();
                        } else {
                          setState(() {
                            _hienloi = true;
                          });
                        }
                      },
                      child: const Text('Đăng nhập'),
                    ),
                    const SizedBox(height: 10,),
                    const loginGoogle(),
                    // SizedBox(
                    //   width: double.infinity,
                    //   child: loginGoogle(),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'hoặc',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ],
                    ),
                    ButtonComponentMauXanhDam(
                      onPressed: () {
                        Navigator.pushNamed(context, '/createaccount');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 19, 27, 107),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: const Text('Tạo tài khoản'),
                    ),
                  ],
                ),
              ),
              //////////
            ),
          ],
        ),
      ),
    );
  }
}
