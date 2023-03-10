import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/emojiAndshare.dart';
import 'package:mangxahoi/pages/feeds/listImagePost.dart';
import 'package:mangxahoi/thuvien/getimg.dart';
import 'package:readmore/readmore.dart';

class postComponent extends StatelessWidget {
  const postComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1670441384415-4680ddc2017e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'))),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    const BoxShadow(
                                        color: Colors.green, spreadRadius: 3),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 3, 0, 3),
                            child: CustomerTextN.textButton16Medium(
                                'Aphrodite Nguyen'),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                                child:
                                    CustomerTextN.textButton13Normal('1 ng??y'),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: icon_congkhai(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                  onTap: () => showAdaptiveActionSheet(
                        context: context,
                        title: CustomerTextN.textButton16BoldBlack('T??y ch???n'),
                        androidBorderRadius: 30,
                        actions: <BottomSheetAction>[
                          BottomSheetAction(
                              title: Container(
                                child: Row(children: <Widget>[
                                  Container(
                                      width: 20, child: const icon_kholuutru()),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: CustomerTextN.textButton16Normal(
                                        'L??u b??i vi???t'),
                                  )
                                ]),
                              ),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_bokholuutru()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'B??? l??u b??i vi???t'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_tatthongbao()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'T???t th??ng b??o t??? ???T??n c???a ng?????i b???n???'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_huytheodoi()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'H???y theo d??i ???T??n c???a ng?????i b???n???'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(width: 20, child: const icon_gothe()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'G??? th??? b??i vi???t (n???u ???????c g???n th???)'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_xoataikhoan()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'Cho v??o th??ng r??c'),
                                )
                              ]),
                              onPressed: (context) {}),
                          BottomSheetAction(
                              title: Row(children: <Widget>[
                                Container(
                                    width: 20, child: const icon_baocao()),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: CustomerTextN.textButton16Normal(
                                      'B??o c??o v??? b??i vi???t n??y'),
                                )
                              ]),
                              onPressed: (context) {}),
                        ],
                        cancelAction: CancelAction(
                            title: CustomerTextN.textButton16Normal(
                                '????ng')), // onPressed parameter is optional by default will dismiss the ActionSheet
                      ),
                  child: const icon_bacham()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: Column(
              children: const <Widget>[
                ReadMoreText(
                  'Nay ??i ch??? Kim Bi??n mua h??ng, c?? ai g???i mua Ho?? Ch???t hay Axit g?? ko ???????? Truy???n c??? t??ch ???? Ng??y x???a ng??y x??a th???i vua h??ng v????ng th??? 18, sau khi h???i c?????i M??? N????ng kh??ng ???????c, Thu??? Tinh t???c t???i qu???y t??ng b???ng, d??ng l?? l???t kh???p n??i r???i tuy??n b???: Tao c???m t???i b??y xu???ng bi???n, g???p ????u ch??m ????!............ Nay ??i ch??? Kim Bi??n mua h??ng, c?? ai g???i mua Ho?? Ch???t hay Axit g?? ko ???????? Truy???n c??? t??ch ???? Ng??y x???a ng??y x??a th???i vua h??ng v????ng th??? 18, sau khi h???i c?????i M??? N????ng kh??ng ???????c, Thu??? Tinh t???c t???i qu???y t??ng b???ng, d??ng l?? l???t kh???p n??i r???i tuy??n b???: Tao c???m t???i b??y xu???ng bi???n, g???p ????u ch??m ????!............',
                  trimLines: 5,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Xem th??m',
                  trimExpandedText: '???n b???t',
                  moreStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  lessStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            // child: listImagePost(),
            child: getimg(),
          ),
          const SizedBox(height: 10),
          const emojiAndshare(),
        ],
      ),
    );
  }
}
