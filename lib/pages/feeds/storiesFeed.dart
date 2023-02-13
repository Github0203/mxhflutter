import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangxahoi/components/widgets/ContainerCustomerN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/createStoriesShortcut.dart';
import 'package:mangxahoi/pages/feeds/storiesEveryone.dart';

class storiesFeed extends StatelessWidget {
  const storiesFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          createStoriesShortcut(),
          storiesEveryone(),
          storiesEveryone(),
          storiesEveryone(),
          storiesEveryone(),
          storiesEveryone(),
          storiesEveryone(),
          storiesEveryone(),
        ],
      ),
    );
  }
}
