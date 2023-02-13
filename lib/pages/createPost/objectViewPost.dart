import 'package:flutter/material.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';

class objectViewPost extends StatefulWidget {
  const objectViewPost({super.key});

  @override
  State<objectViewPost> createState() => _objectViewPostState();
}

class _objectViewPostState extends State<objectViewPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: CustomerTextN.textButton13Bold(
                  'Ai có thể xem bài viết của bạn?'),
            ),
            CustomerTextN.textButton13Grey(
                'Bài viết của bạn sẽ hiển thị ở Bảng tin, trang cá nhân và kết quả tìm kiếm.')
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        CustomerButtonN.buttonMenuHaveIcon('Công khai',
            'Mọi người trên hoặc ngoài ITP', const icon_congkhaimenu()),
        const SizedBox(
          height: 10.0,
        ),
        CustomerButtonN.buttonMenuHaveIcon(
            'Bạn bè', 'Bạn bè của bạn trên ITP', const icon_banbe()),
        const SizedBox(
          height: 10.0,
        ),
        CustomerButtonN.buttonMenuHaveIcon(
            'Chỉ mình tôi', '', const icon_chiminhtoi()),
        const SizedBox(
          height: 10.0,
        ),
        CustomerButtonN.buttonMenuHaveIcon(
            'icon_chiminhtoi', '', const icon_chiminhtoi()),
        const SizedBox(
          height: 10.0,
        ),
        CustomerButtonN.buttonMenuHaveIcon('Bạn bè cụ thể',
            'Ahmad Gouse, Ngoc Nguyen', const icon_banbecuthe()),
        const SizedBox(
          height: 10.0,
        ),
        CustomerButtonN.buttonMenuHaveIcon(
            'Bạn bè ngoại trừ', '', const icon_banbengoaitru()),
      ],
    );
  }
}
