import 'package:flutter/material.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';



class friendSpecial  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
          primary: false,
          padding: const EdgeInsets.all(4),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          crossAxisCount: 3,
          children: [
           AvaterN.img('https://cdn.noron.vn/2021/07/24/90679189766993593-1627114254_1024.jpg', 90, 100, 10, 'Tên bạn bè', 13, false),
           AvaterN.img('https://cdn.noron.vn/2021/07/24/90679189766993593-1627114254_1024.jpg', 90, 100, 10, 'Tên bạn bè', 13, false),
           AvaterN.img('https://cdn.noron.vn/2021/07/24/90679189766993593-1627114254_1024.jpg', 90, 100, 10, 'Tên bạn bè', 13, false),
           AvaterN.img('https://cdn.noron.vn/2021/07/24/90679189766993593-1627114254_1024.jpg', 90, 100, 10, 'Tên bạn bè', 13, false),
           AvaterN.img('https://cdn.noron.vn/2021/07/24/90679189766993593-1627114254_1024.jpg', 90, 100, 10, 'Tên bạn bè', 13, false),
           AvaterN.img('https://cdn.noron.vn/2021/07/24/90679189766993593-1627114254_1024.jpg', 90, 100, 10, 'Tên bạn bè', 13, false),
          ],
        );
  }
}