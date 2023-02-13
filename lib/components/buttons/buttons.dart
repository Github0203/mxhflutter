import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/main/mainPage.dart';

class homeButton extends StatelessWidget {
  const homeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage())),
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      child: const Text(
        'Home',
        style: TextStyle(color: Colors.yellow),
      ),
    );
  }
}

class buttonCancel extends StatelessWidget {
  const buttonCancel({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 92, 93, 99),
        minimumSize: const Size.fromHeight(50),
      ),
      child: const Text('Hủy bỏ'),
      onPressed: () {
        // Navigator.pop(context);
      },
    );
  }
}

const List<String> list = <String>['Nam', 'Nữ', 'Khác'];

class SexGioitinh extends StatefulWidget {
  const SexGioitinh({super.key});

  @override
  State<SexGioitinh> createState() => _SexGioitinhState();
}

class _SexGioitinhState extends State<SexGioitinh> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      focusColor: Colors.white,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
    ;
  }
}

class CustomerButtonN {
  static Widget buttonMenuHaveIcon(
    String title,
    String label,
    Widget child,
  ) {
    return Row(
      children: <Widget>[
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black12,
          ),
          child:
              Center(child: Container(width: 26.0, height: 26.0, child: child)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomerTextN.textButton13Bold(title),
              CustomerTextN.textButton13Grey(label),
            ],
          ),
        ),
      ],
    );
  }

  static Widget chooseHaveIconandAText(
    String title,
    Widget child,
  ) {
    return Row(
      children: <Widget>[
        Container(
          width: 30.0,
          height: 30.0,
          padding: const EdgeInsets.only(right: 5),
          child:
              Center(child: Container(width: 26.0, height: 26.0, child: child)),
        ),
        CustomerTextN.textButton13Normal(title),
      ],
    );
  }
  static Widget ElevatedButtonNBlue(
    String title,
    Function? function,
  ) {
    return ElevatedButton(
        child: CustomerTextN.textButton16white(title),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue[400],
          shape: const StadiumBorder()
        ),
        onPressed: () => function,
      );
  }
  static Widget ElevatedButtonNGrey(
    String title,
    Function? function,
  ) {
    return ElevatedButton(
        child: CustomerTextN.textButton16white(title),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[400],
          shape: const StadiumBorder()
        ),
        onPressed: () => function,
      );
  }

static Widget chooseHaveIconandATextandColor(
    String title,
    int color,
    double padding,
    Widget child,
  ) {
    return Container(
            color: Color(color),
            padding: EdgeInsets.all(padding),
      child: Row(
        children: <Widget>[
          CustomerTextN.textThuCong(title, 13),
          Center(child: Container(width: 26.0, height: 26.0, child: child)),
        ],
      ),
    );
  }

}
