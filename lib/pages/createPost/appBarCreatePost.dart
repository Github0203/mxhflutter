import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/createPost/dropDownShare.dart';

class appBarCreatePost extends StatefulWidget {
  const appBarCreatePost({super.key});

  @override
  State<appBarCreatePost> createState() => _appBarCreatePostState();
}

class _appBarCreatePostState extends State<appBarCreatePost> {
  void _showBottomSheetShare(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      title: const Text('Chọn nơi đăng tin'),
      androidBorderRadius: 30,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: Container(
              child: Row(children: <Widget>[
                Container(width: 20, child: const icon_bangtin()),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: CustomerTextN.textButton16Normal(
                      'Chia sẽ lên ITP SECRECT'),
                )
              ]),
            ),
            onPressed: (context) {}),
        BottomSheetAction(
            title: Row(children: <Widget>[
              Container(width: 20, child: const icon_banbe()),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CustomerTextN.textButton16Normal(
                    'Trên dòng thời gian của bạn bè'),
              )
            ]),
            onPressed: (context) {}),
        BottomSheetAction(
            title: Row(children: <Widget>[
              Container(width: 20, child: const icon_nhommauden()),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CustomerTextN.textButton16Normal('Chia sẽ lên nhóm'),
              )
            ]),
            onPressed: (context) {}),
      ],
      cancelAction: CancelAction(
          title: CustomerTextN.textButton16Normal(
              'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            GestureDetector(
                onTap: () => Navigator.pop(context), child: const icon_trove()),
            GestureDetector(
              onTap: () => _showBottomSheetShare(context),
              child: Container(
                  width: setwidthThuCong * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Container(
                                width: 30,
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: const icon_bangtin()),
                            CustomerTextN.textButton16NormalBlack(
                                'Chia sẽ lên ITP Group'),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: icon_muitenxuong(),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
        CustomerTextN.textButton13blue('Lưu'),
      ],
    );
  }
}
