import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/personal/introSocials.dart';


class introPersonal extends StatefulWidget {
  const introPersonal({super.key});

  @override
  State<introPersonal> createState() => _introPersonalState();
}

class Intro {
  String? work;
  String? live;
  String? from;
  String? school;
  String? phone;
  String? sex;
  String? relationship;
  String? birthday;
  String? website;
  String? follow;

  Intro({
    this.work, 
    this.live,
    this.from, 
    this.school,
    this.phone, 
    this.sex,
    this.relationship, 
    this.birthday,
    this.website, 
    this.follow,
    });
}

List intros = [
  Intro(
    work: "Designer ", 
    live: "Ho Chi Minh City", 
    from: "Phan Thiết", 
    school: "Đại học Ha Quớt", 
    phone: "0909 090 909", 
    sex: "Nữ", 
    relationship: "Độc thân", 
    birthday: "02/03.1995", 
    website: "https://itp29.com", 
    follow: "29", 
    ),
];
  final List<String> socials = <String>[
    'Manish',
    'Jitender',
    'Pankaj',
    'Aarti',
    'Nighat',
    'Mohit',
    'Ruchika',
  ];

class _introPersonalState extends State<introPersonal> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return 
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemCount: more ? intros.length : 1,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: 
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                          const icon_congviec(),
                                          const SizedBox(width: 5),
                                          CustomerTextN.textButton13black('Làm việc tại: '),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].work}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const icon_nha(),
                                          const SizedBox(width: 5),
                                          CustomerTextN.textButton13black('Sống tại: '),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].live}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const Icon(Icons.location_on),
                                          const SizedBox(width: 5),
                                          CustomerTextN.textButton13black('Từ: '),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].from}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const Icon(Icons.turned_in_not),
                                          const SizedBox(width: 5),
                                          CustomerTextN.textButton13black('Đã học Vũ trụ học tại: '),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].school}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const Icon(Icons.call),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].phone}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const icon_gioitinh(),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].sex}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const Icon(Icons.favorite),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].relationship}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const Icon(Icons.cake),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].birthday}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const Icon(Icons.public),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('${intros[index].follow}'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                          const Icon(Icons.link),
                                          const SizedBox(width:5),
                                          CustomerTextN.textButton13Normal('Mạng xã hội'),
                                          const SizedBox(width:5),
                                          Container(
                                            width: 10,
                                            child: const icon_chiminhtoi()),
                                      ]
                                    ),
                                    
                                  ],
                                ),                                
                              ),
                        );
  }
}