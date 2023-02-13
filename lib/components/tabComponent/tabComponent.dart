import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

class tabComponent extends StatefulWidget {
  const tabComponent({super.key});

  @override
  State<tabComponent> createState() => _tabComponentState();
}

class _tabComponentState extends State<tabComponent> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TitleScrollNavigation(
        barStyle: const TitleNavigationBarStyle(
          style: TextStyle(fontWeight: FontWeight.bold),
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          spaceBetween: 40,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        titles: [
          "Main Page",
          "Personal Information",
          "Personalization",
          "Security",
          "Payment Methods",
        ],
        pages: [
          ListView.builder(
            itemCount: 30,
            controller: controller,
            padding: EdgeInsets.zero,
            itemBuilder: (_, __) {
              return Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 60,
                  color: Colors.blue[50],
                ),
              );
            },
          ),
          // Container(color: Colors.red[50]),
          // Container(color: Colors.green[50]),
          Container(color: Colors.purple[50]),
          Container(color: Colors.yellow[50]),
        ],
      ),
    );
  }
}
