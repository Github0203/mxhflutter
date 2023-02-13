import 'package:flutter/material.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/pages/login/formLogin/formchoncachlaymaykhau.dart';
import 'package:mangxahoi/pages/login/formLogin/formchonlayMKbangEmail.dart';
import 'package:mangxahoi/pages/login/formLogin/formchonlayMKbangSDT.dart';
import 'package:mangxahoi/pages/login/formLogin/intl_phone_field.dart';
import 'package:mangxahoi/pages/login/login.dart';

enum SingingCharacter { lafayette, jefferson }

class formForgetPass extends StatefulWidget {
  const formForgetPass({super.key});

  @override
  State<formForgetPass> createState() => _formForgetPassState();
}

class _formForgetPassState extends State<formForgetPass> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  int indexform = 0;
  int select = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'QUÊN MẬT KHẨU',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Container(
            child: IndexedStack(
              index: indexform,
              children: <Widget>[
                ////// 0 form chọn cách lấy mật khẩu 1
                Container(
                  child: Column(
                    children: <Widget>[
                      Column(
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
                                      title: const Text(
                                          'Yêu cầu liên kết email đặt lại mật khẩu'),
                                      leading: Radio<SingingCharacter>(
                                        value: SingingCharacter.lafayette,
                                        groupValue: _character,
                                        onChanged: (SingingCharacter? value) {
                                          setState(() {
                                            _character = value;
                                            select = 1;
                                          });
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      title: const Text(
                                          'Quên mật khẩu sử dụng điện thoại qua mã'),
                                      leading: Radio<SingingCharacter>(
                                        value: SingingCharacter.jefferson,
                                        groupValue: _character,
                                        onChanged: (SingingCharacter? value) {
                                          setState(() {
                                            _character = value;
                                            select = 2;
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
                      ),

                      //// nút tiếp tục

                      Padding(
                        padding: const EdgeInsets.only(top:5.0, bottom:5.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 19, 27, 107),
                            minimumSize: const Size.fromHeight(50),
                          ),
                          child: const Text('Tiếp tục'),
                          onPressed: () {
                            if (select == 1) {
                              setState(() {
                                indexform = 1;
                              });
                            } else {
                              setState(() {
                                indexform = 2;
                              });
                            }
                          },
                        ),
                      ),

                      //// nút hủy
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 92, 93, 99),
                            minimumSize: const Size.fromHeight(50),
                          ),
                          child: const Text('Hủy bỏ'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),

                ////// 1 form chọn cách lấy mật khẩu bằng Email
                Container(
                  child: Column(
                    children: <Widget>[
                      const chonlayMKbangEmail(),

                      //// nút tiếp tục
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 19, 27, 107),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text('Tiếp tục'),
                        onPressed: () {
                          // setState(() {
                          //   indexform = 3;
                          // });
                        },
                      ),

                      //// nút hủy
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 92, 93, 99),
                            minimumSize: const Size.fromHeight(50),
                          ),
                          child: const Text('Hủy bỏ'),
                          onPressed: () {
                            setState(() {
                              indexform = 0;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),

                /////// 2 form lấy mật khẩu bằng SĐT
                Container(
                  child: Column(
                    children: <Widget>[
                      const chonlayMKbangSDT(),

                      //// nút tiếp tục
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 19, 27, 107),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text('Tiếp tục'),
                        onPressed: () {
                          // setState(() {
                          //   indexform = 2;
                          // });
                        },
                      ),

                      //// nút hủy
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 92, 93, 99),
                            minimumSize: const Size.fromHeight(50),
                          ),
                          child: const Text('Hủy bỏ'),
                          onPressed: () {
                            setState(() {
                              indexform = 0;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
