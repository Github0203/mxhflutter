import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class listImagePost extends StatelessWidget {
  const listImagePost({super.key});

  @override
  Widget build(BuildContext context) {
    double setweidththucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;
    List<String> imagesn = [
      "https://plus.unsplash.com/premium_photo-1669276309633-6901d21a2626?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
      "https://images.unsplash.com/photo-1484406566174-9da000fda645?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80",
      "https://images.unsplash.com/photo-1437622368342-7a3d73a34c8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
      "https://images.unsplash.com/photo-1555169062-013468b47731?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "https://images.unsplash.com/photo-1555169062-013468b47731?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    ];
    return Container(
      width: setweidththucong,
      height: 251,
      color: Colors.blueAccent,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: imagesn.map((img) {
          return GestureDetector(
            onTap: () => _dialogBuilder(context),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(img),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  double setwidththucong = MediaQuery.of(context).size.width;
  double setHeightThuCong = MediaQuery.of(context).size.height;
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Column(
        children: <Widget>[
          Container(
            height: setHeightThuCong * 0.1,
            child: Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                    width: setwidththucong,
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context, true);
                            },
                            child: const icon_dongthumb()),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            child: AlertDialog(
              backgroundColor: Color.fromARGB(00, 0, 0, 0),
              insetPadding: EdgeInsets.all(0),
              title: Container(
                  height: setHeightThuCong * 0.8,
                  width: setwidththucong,
                  child: BasicDemo()),
            ),
          ),
        ],
      );
    },
  );
}

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return ManuallyControlledSlider();
  }
}

class ManuallyControlledSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double setHeightThuCong = MediaQuery.of(context).size.height;
    double setWidthThuCong = MediaQuery.of(context).size.width;
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                child: ClipRRect(
                    // borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: Image.network(
                            item,
                            fit: BoxFit.fill,
                            width: setWidthThuCong,
                          ),
                        ),
                      ),
                    ),
                    // Positioned(
                    //   bottom: 0.0,
                    //   left: 0.0,
                    //   right: 0.0,
                    //   child: Container(
                    //     decoration: const BoxDecoration(
                    //       gradient: LinearGradient(
                    //         colors: [
                    //           Color.fromARGB(200, 0, 0, 0),
                    //           Color.fromARGB(0, 0, 0, 0)
                    //         ],
                    //         begin: Alignment.center,
                    //         end: Alignment.center,
                    //       ),
                    //     ),
                    //     padding: const EdgeInsets.symmetric(
                    //         vertical: 10.0, horizontal: 20.0),
                    //     child: Text(
                    //       'No. ${imgList.indexOf(item)} image',
                    //       style: const TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                )),
              ),
            ))
        .toList();
    return Container(
      child: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  enlargeCenterPage: true, height: setHeightThuCong * 0.8),
              carouselController: _controller,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: GestureDetector(
                        onTap: () => _controller.previousPage(),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(202, 119, 122, 120),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),

                          // child: Text('←'),
                          child: const Icon(
                            Icons.arrow_left_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Flexible(
                        child: GestureDetector(
                          onTap: () => _controller.nextPage(),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(202, 119, 122, 120),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),

                            // child: Text('←'),
                            child: const Icon(
                              Icons.arrow_right_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ...Iterable<int>.generate(imgList.length).map(
                    //   (int pageIndex) => Flexible(
                    //     child: ElevatedButton(
                    //       onPressed: () => _controller.animateToPage(pageIndex),
                    //       child: Text("$pageIndex"),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
