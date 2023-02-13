// ignore: file_names
import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/gropus/tabGroupPage.dart';

class groupHome extends StatefulWidget {
  const groupHome({super.key});

  @override
  State<groupHome> createState() => _groupHomeState();
}

class _groupHomeState extends State<groupHome> {
  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;
    double setheightThuCong = MediaQuery.of(context).size.height;

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        
        child: tabGroupPage()
        ),            
    );
  }
}