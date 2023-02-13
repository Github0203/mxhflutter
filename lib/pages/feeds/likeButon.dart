import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class likeButton extends StatefulWidget {
  const likeButton({super.key});

  @override
  State<likeButton> createState() => _likeButtonState();
}

class _likeButtonState extends State<likeButton> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = !clicked;
        });
      },
      child: clicked ? 
      Row(
        children: const <Widget>[
          icon_like_gif(),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text('Thích',style: TextStyle(
            color: Color(0XFF3b5998),
        ),),
          ),
        ],
      )
       : const icon_like(),
    );
  }
}
