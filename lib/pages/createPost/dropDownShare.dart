import 'package:flutter/material.dart';

class dropDownShare extends StatefulWidget {
  const dropDownShare({super.key});

  @override
  State<dropDownShare> createState() => _dropDownShareState();
}

class _dropDownShareState extends State<dropDownShare> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Dog';

    return DropdownButtonFormField(
      // decoration: const InputDecoration(
      //   enabledBorder: OutlineInputBorder(
      //     //<-- SEE HERE
      //     borderSide: BorderSide(color: Colors.black, width: 2),
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     //<-- SEE HERE
      //     borderSide: BorderSide(color: Colors.black, width: 2),
      //   ),
      //   filled: true,
      //   fillColor: Colors.greenAccent,
      // ),
      dropdownColor: Colors.greenAccent,
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(fontSize: 20),
          ),
        );
      }).toList(),
    );
  }
}
