import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';

import '../../data/example_data.dart' as example;
import '../../models/comment.dart';
import '../comments.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

class ItemEmojiN extends StatefulWidget {
  const ItemEmojiN({
    Key? key,
    this.title,
    this.imgPath,
    required this.reactions,
  }) : super(key: key);

  final String? title;
  final String? imgPath;
  final List<Reaction<String>> reactions;

  @override
  State<ItemEmojiN> createState() => _ItemState();
}

class _ItemState extends State<ItemEmojiN> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final List<Comment> _comments = [];
  void _showBottomSheetComments(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      builder: (context) {
        return Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Comments(comments: _comments));
      },
    );
  }

  void _showBottomSheetShare(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      title: const Text('Chia sẽ'),
      androidBorderRadius: 30,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: Container(
              child: Row(children: <Widget>[
                Container(width: 20, child: const icon_chiase()),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: CustomerTextN.textButton16Normal(
                      'Chia sẽ lên bản tin của bạn'),
                )
              ]),
            ),
            onPressed: (context) {}),
        BottomSheetAction(
            title: Row(children: <Widget>[
              Container(width: 20, child: const icon_guibangtinnhan()),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CustomerTextN.textButton16Normal('Gửi bằng tin nhắn'),
              )
            ]),
            onPressed: (context) {}),
        BottomSheetAction(
            title: Row(children: <Widget>[
              Container(width: 20, child: const icon_nhom()),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CustomerTextN.textButton16Normal('Chia sẽ lên nhóm'),
              )
            ]),
            onPressed: (context) {}),
        BottomSheetAction(
            title: Row(children: <Widget>[
              Container(width: 20, child: const icon_chiasefacebook()),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CustomerTextN.textButton16Normal('Chia sẽ lên Facebook'),
              )
            ]),
            onPressed: (context) {}),
        BottomSheetAction(
            title: Row(children: <Widget>[
              Container(width: 20, child: const icon_zalo()),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CustomerTextN.textButton16Normal('Chia sẽ lên Zalo'),
              )
            ]),
            onPressed: (context) {}),
        BottomSheetAction(
            title: Row(children: <Widget>[
              Container(width: 20, child: const icon_lienketchiase()),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CustomerTextN.textButton16Normal('Sao chép liên kết'),
              )
            ]),
            onPressed: (context) {}),
      ],
      cancelAction: CancelAction(
          title: CustomerTextN.textButton16Normal(
              'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  void _showPeopleShare(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      title: const Text('Đăng bình luận với tư cách là'),
      androidBorderRadius: 30,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(children: <Widget>[
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1670441384415-4680ddc2017e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')))),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: CustomerTextN.textButton16Medium('Tên người dùng'),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: CustomerTextN.textButton18Medium('Trang'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(children: <Widget>[
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1670441384415-4680ddc2017e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')))),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: CustomerTextN.textButton16Medium('Tên trang'),
                    )
                  ]),
                ),
              ],
            ),
            onPressed: (context) {}),
      ],
      cancelAction: CancelAction(
          title: CustomerTextN.textButton16Medium(
              'Đóng')), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: const Center(
              child: Text("Welcome to AndroidVille!"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;
    super.build(context);
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: ReactionButtonToggle<String>(
                onReactionChanged: (String? value, bool isChecked) {
                  debugPrint('Chọn giá trị: $value, được chọn là: $isChecked');
                },
                reactions: widget.reactions,
                initialReaction: example.defaultInitialReaction,
                selectedReaction: widget.reactions[1],
              ),
            ),
          ),
          InkWell(
            onTap: () => _showBottomSheetComments(context),
            child: Row(
              children: [
                Icon(
                  Icons.message,
                  size: 20,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 5),
                Text(
                  'Bình luận',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            // onTap: () {
            //   ScaffoldMessenger.of(context).showSnackBar(
            //     SnackBar(
            //       duration: const Duration(seconds: 2),
            //       content: Text(
            //         'Chia sẽ hình ảnh ${widget.title}',
            //         style: const TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   );
            // },
            onTap: () => _showBottomSheetShare(context),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.share,
                  size: 20,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 5),
                Text(
                  'Chia sẽ',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[600],
                  ),
                ),
                GestureDetector(
                  onTap: () => _showPeopleShare(context),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        width: 15,
                        height: 15,
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/png/icon_ava.png'),
                        ),
                      ),
                      const icon_muiten()
                    ]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
