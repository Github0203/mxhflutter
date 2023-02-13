import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/login/formLogin/formForgetPass.dart';
import 'package:mangxahoi/pages/login/formLogin/icon_logo.dart';

class forgetPassComponent extends StatelessWidget {
  const forgetPassComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double setpaddingthucong = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: setpaddingthucong,
          height: setpaddingthucong * 2.05,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/png/hinhnen.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Expanded(
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(setpaddingthucong * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    /////// logo
                    const iconLogoComponent(),

                    ////// form forget pass
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(144, 255, 255, 255),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0))),
                      // child: const formForgetPass(),
                      child: IndexedStack(
                        index: 0,
                        children: const <Widget>[formForgetPass()],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
