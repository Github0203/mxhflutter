import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/login/formLogin/intl_phone_field.dart';

// import '../../countrys/csc_picker.dart';
import '../../../components/checkpass/src/validated_field.dart';
import '../../../components/widgets/ButtonComponentMauXanhDam.dart';
import '../../../components/widgets/InputTextWidget.dart';
import 'package:mangxahoi/components/chonnuoc/country_state_city_pro.dart';

class formRegister extends StatefulWidget {
  const formRegister({super.key});

  @override
  State<formRegister> createState() => _formRegisterState();
}

class _formRegisterState extends State<formRegister> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _hoTextEditingController =
      TextEditingController();
  final TextEditingController _tenTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _dienthoaiTextEditingController =
      TextEditingController();
  final TextEditingController _quocgiaTextEditingController =
      TextEditingController();
  final TextEditingController _thanhphoTextEditingController =
      TextEditingController();
  final TextEditingController _gioitinhTextEditingController =
      TextEditingController();
  final TextEditingController _matkhauTextEditingController =
      TextEditingController();
  bool _visiblePassword = false;
  String? _ho = "";
  String? _ten = "";
  String? _email = "";
  String? _dienthoai = "";
  String? _quocgia = "";
  String? _thanhpho = "";
  String? _gioitinh = "";
  String? _matkhau = "";
  String? _rematkhau = "";
  String? _error = "Please provide a valid email/password combination";

  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  // simple check
  bool _validPassword = false;

  // form key

  @override
  Widget build(BuildContext context) {
    TextEditingController country = TextEditingController();
    TextEditingController state = TextEditingController();
    TextEditingController city = TextEditingController();

    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Text(
                'TẠO TÀI KHOẢN MỚI',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Bạn đã có tài khoản',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 65, 59, 59))),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('Đăng nhập',
                          style: TextStyle(fontSize: 16))),
                ],
              ),

              /////////// Họ
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: InputTextWidgetComponent(
                  cursorColor: Colors.white,
                  labelText: 'Họ',
                  hintText: 'Họ',
                  readOnly: false,
                  textEditingController: _hoTextEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    setState(() {
                      _ho = _ho!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Bắt buộc';
                    }
                    return null;
                  },
                ),
              ),
              /////////// tên
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: InputTextWidgetComponent(
                  cursorColor: Colors.white,
                  labelText: 'Tên',
                  hintText: 'Tên',
                  readOnly: false,
                  textEditingController: _tenTextEditingController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    setState(() {
                      _ten = _ten!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Bắt buộc';
                    }
                    return null;
                  },
                ),
              ),
              /////////// email
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
                      _email = _email!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Bắt buộc';
                    } else if (RegExp(
                                r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                            .hasMatch(value) ==
                        false) {
                      return "Email chưa hợp lệ";
                    }
                    return null;
                  },
                ),
              ),
              /////////// điện thoại
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: IntlPhoneField(),
              ),
              ///// chọn nước
              ///
              CountryStateCityPicker(
                country: country,
                state: state,
                city: city,
                textFieldInputBorder: const UnderlineInputBorder(),
              ),
              const SizedBox(height: 20),

              /////// nhập pass
              // _validPassword
              //     // ignore: prefer_const_constructors
              //     ? Text(
              //         // "Password Valid!",
              //         '',
              //         style: const TextStyle(fontSize: 22.0),
              //       )
              //     : Container(),

              ////// Mật khẩu
              PasswordValidatedFields(), //

              ////// giới tính
              // const Padding(
              //   padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
              //   child: SexGioitinh(),
              // ),

              //////// Nút đăng ký
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ButtonComponentMauXanhDam(
                  child: const Text('Đăng ký'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _validPassword = true;
                      });
                    } else {
                      setState(() {
                        _validPassword = false;
                      });
                    }
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(content: Text('Đã đăng ký thành công')),
                      // );
                      Navigator.pushNamed(context, '/registersussess');
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
