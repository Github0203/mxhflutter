import 'package:flutter/material.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/ButtonComponentMauXanhDam.dart';

class newSpecials extends StatefulWidget {
  newSpecials({Key? key}) : super(key: key);

  @override
  State<newSpecials> createState() => _newSpecialsState();
}

class _newSpecialsState extends State<newSpecials> {
  int? _selectedIndex; // if you want to provide default selection, init here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ), //top level space
          SizedBox(
            height: 140, // play with height
            child: ListView.builder(
              itemCount: 33, //number of item you like show
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    // child: Text("$index"),
                    child: Column(
                      children: <Widget>[
                          AvaterN.img('https://kenh14cdn.com/thumb_w/660/2018/7/20/screen-shot-2018-07-20-at-152432-15320751213431690529907.png', 100, 80, 10, 'Bộ sưu tập $index', 13, false)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          
        ],
      ),
    );
  }
}