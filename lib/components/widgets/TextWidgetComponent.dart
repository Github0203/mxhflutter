import 'package:flutter/material.dart';

class CustomerTextN {
  static Widget textButton18Medium(String data) {
    return Text(
      data,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
    );
  }

    static Widget textButton18NormalBlack(String data) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 18.0,
        color: Colors.black45,
      ),
    );
  }
    static Widget textButton18BoldlBlack(String data) {
    return Text(
      data,
      style: const TextStyle(
        fontWeight: FontWeight.w600, 
        fontSize: 18.0,
        color: Colors.black45,
      ),
    );
  }
    static Widget textButton18BoldlBlue(String data) {
    return Text(
      data,
      style: const TextStyle(
        fontWeight: FontWeight.w600, 
        fontSize: 18.0,
        color: Colors.blue,
      ),
    );
  }

  static Widget textButton16Medium(String data) {
    return Text(
      data,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
    );
  }

  static Widget textButton16Normal(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 16.0),
      softWrap: false,
        maxLines: 2,
        overflow: TextOverflow.ellipsis, // new
    );
  }
  static Widget textButton16NormalWrap(String data) {
    return Text(
      textAlign: TextAlign.left,
      data,
      style: const TextStyle(
        fontSize: 16.0,color: Colors.black45),
      softWrap: false,
        maxLines: 2,
        overflow: TextOverflow.ellipsis, // new
    );
  }
  static Widget textButton16NormalRed(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 16.0,color: Color.fromARGB(197, 189, 8, 8),),
      
    );
  }

  static Widget textButton16NormalBlack(String data) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.black45,
      ),
    );
  }
  static Widget textButton16BoldBlack(String data) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
    );
  }

  static Widget textButton13Normal(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 13.0),
    );
  }
  static Widget textButton13NormalWhite(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 13.0,color: Colors.white,),
    );
  }

  static Widget textButton13Bold(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
    );
  }

  static Widget textButton13black(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 13.0,
            color: Colors.black45,
            fontWeight: FontWeight.w500));
  }

  static Widget textButton13Grey(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 13.0,
            color: Colors.black26,
            fontWeight: FontWeight.w500));
  }

  static Widget textButton13blue(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 13.0, color: Colors.blue, fontWeight: FontWeight.w500));
  }
  static Widget textButton16blue(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 16.0, color: Colors.blue, fontWeight: FontWeight.w500));
  }
  static Widget textButton16white(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500));
  }
  static Widget textButton16gey(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 16.0, color: Colors.grey));
  }
   static Widget textButton20black(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.w500));
  }
   static Widget textThuCong(String data, double fontSize) {
    return Text(data,
        style: TextStyle(
            fontSize: fontSize,
            color: Colors.black,
            fontWeight: FontWeight.w500));
  }
}
