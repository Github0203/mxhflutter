import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/personal/introSocials.dart';


class introSocials extends StatefulWidget {
  const introSocials({super.key});

  @override
  State<introSocials> createState() => _introSocialsState();
}

class Intro {
  String? link;

  Intro({
    this.link, 
    });
}

List intros = [
  Intro(
    link: "facebook.com/itp29", 
    ),
  Intro(
    link: "twitter.com/itp29", 
    ),
  Intro(
    link: "youtube.com/itp29", 
    ),
];

class _introSocialsState extends State<introSocials> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return 
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemCount: intros.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: 
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                          const SizedBox(width: 5),
                                          CustomerTextN.textButton13blue('${intros[index].link}'),
                                          const SizedBox(width:5),
                                      ]
                                    ),
                                  ],
                                ),                                
                              ),
                        );
  }
}