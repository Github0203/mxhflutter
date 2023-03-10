import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/ButtonComponentMauChinh.dart';
import 'package:mangxahoi/components/widgets/ButtonComponentMauXam.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/howdoyouthinkComponent.dart';
import 'package:mangxahoi/pages/feeds/postComponent.dart';
import 'package:mangxahoi/pages/friend/friendPage.dart';
import 'package:mangxahoi/pages/personal/friendSpecial.dart';
import 'package:mangxahoi/pages/personal/gallerySpecial.dart';
import 'package:mangxahoi/pages/personal/introPersonal.dart';
import 'package:mangxahoi/pages/personal/introSocials.dart';
import 'package:mangxahoi/pages/personal/newSpecials.dart';
import 'package:mangxahoi/pages/personal/personalPageFriend.dart';

class personalPage extends StatefulWidget {
  const personalPage({super.key});

  @override
  State<personalPage> createState() => _personalPageState();
}

class _personalPageState extends State<personalPage> {
  bool more = false;
  bool trangcaidat = false;
  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;
    return 
    SingleChildScrollView(
      child: 
      trangcaidat == false?
      Column(
        children: <Widget>[
            Center(
              child: Container(
                height: 200,
                child: Stack(
                  children: [
                     Stack(
                  children: <Widget>[
                    Container(
                      width: setwidththucong,
                      height: 150,
                      decoration: const BoxDecoration(     
                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),     
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://image.thanhnien.vn/1200x630/Uploaded/2023/xdrkxrvekx/2022_02_22/pikachu-7716.png'),
                  ),
                ),
                      // child: AvaterN.img('https://image.thanhnien.vn/1200x630/Uploaded/2023/xdrkxrvekx/2022_02_22/pikachu-7716.png', 150, setwidththucong, 0, '', 0, false)
                      ),
                    Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(0,0,8,8),
                                        child: Container(
                                          decoration: const BoxDecoration( 
                                            color: Color.fromARGB(162, 255, 255, 255),    
                  borderRadius: BorderRadius.only(                              
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),  
                                          ),
                                          padding: const EdgeInsets.all(8.0),
                                          child: const Icon(Icons.photo_camera),
                                        ),
                                      ),
                                    ),
                                  ),
                  ],
          ),
          Align(
                // alignment: AlignmentDirectional.centerEnd,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top:80.0),
                      // color: Colors.red,
                      child: Container(
                        height: 110,
                        width: 100,
                        child: Stack(
                          children: [
                        AvaterN.img('https://i.pinimg.com/originals/56/17/af/5617af08114fbd4068831424cbdb61ef.jpg', 100, 100, 100, '', 0, true),
                         Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(0,0,0,8),
                                            child: Container(
                                              decoration: const BoxDecoration( 
                                                color: Color.fromARGB(162, 255, 255, 255),    
                    borderRadius: BorderRadius.only(                              
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),  
                                              ),
                                              padding: const EdgeInsets.all(8.0),
                                              child: const Icon(Icons.photo_camera),
                                            ),
                                          ),
                                        ),
                                      ),
                  
                          ],
                        ),
                      )
                      
                      ),
                   
                  ],
                ),
          ),
        
                  ],
                ),
              ),
            ),
            CustomerTextN.textThuCong('Long Tr???n', 36),
            CustomerTextN.textButton16NormalBlack('C??u Slogan b???n th??n ??? ????y'),
            Column(
              children: <Widget>[
                 Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [                  
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    margin: const EdgeInsets.only(bottom: 5),
                        decoration: const BoxDecoration( border: Border(
                    bottom: BorderSide(width: 1, color: Color.fromARGB(120, 158, 158, 158)),
                  ), ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(   
                          child: Row(
                            children: <Widget>[
                               const icon_follow(),
                               CustomerTextN.textButton13Normal('2929 ng?????i theo d??i'),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                           decoration: const BoxDecoration(           
                            color: Color.fromARGB(90, 158, 158, 158), 
                        borderRadius: BorderRadius.all( Radius.circular(5),),  
                        
                      ),
                          child: GestureDetector(
                            onTap: () {
                  setState(() {
                    trangcaidat = !trangcaidat;
                  });
                            },
                            child: const icon_bacham1()
                          )
                          ),
                        
                      ],
                    ),
                  ),
                  CustomerTextN.textThuCong('Gi???i thi???u', 20),
                  const SizedBox(height: 5,),
                  CustomerTextN.textButton13blue('Ch???nh s???a gi???i thi???u'),
                  const SizedBox(height: 5,),
                  const introPersonal(),

                ],
              ),
            ),
                more ? const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 8, 0),
                  child: introSocials(),
                )
                :
                Container(),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                    margin: const EdgeInsets.only(bottom: 10),
                   decoration: const BoxDecoration( border: Border(
                    bottom: BorderSide(width: 1, color: Color.fromARGB(120, 158, 158, 158)),
                  ), ),
                  width:setwidththucong-16,
                  child: Center(
                    child: GestureDetector(                    
                                  onTap: () => {
                                        setState(() {
                                          more = !more;
                                        })
                                      },
                                  child: more
                                      // ignore: dead_code
                                      ? Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            CustomerTextN.textButton16blue('???n b???t'),
                                            const RotationTransition(
                                              turns: AlwaysStoppedAnimation(0 / 360),
                                              child: icon_muitenxanh(),
                                            )
                                          ],
                                        )
                                      : Padding(
                                          padding:
                                              const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              CustomerTextN.textButton16blue(
                                                  'Xem th??m'),
                                              const RotationTransition(
                                                turns:
                                                    AlwaysStoppedAnimation(180 / 360),
                                                child: icon_muitenxanh(),
                                              )
                                            ],
                                          ),
                                        )),
                  ),
                ),
              
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      CustomerTextN.textThuCong('B??? s??u t???p ????ng ch?? ??', 20),                  
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    width: setwidththucong-16,
                    height: 150,
                    color: Colors.red,
                    child: newSpecials()
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(bottom: 10),
                        decoration: const BoxDecoration( border: Border(
                    bottom: BorderSide(width: 1, color: Color.fromARGB(120, 158, 158, 158)),
                  ), ),
                      child: ButtonComponentMauXam(
                          child: CustomerTextN.textButton13NormalWhite('Ch???nh s???a ph???n ????ng ch?? ??'),
            onPressed: () => {},
            ),
                    ),
                Row(
                    children: <Widget>[
                      CustomerTextN.textThuCong('???nh/Video', 20),                  
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    height: 230,
                    child: gallerySpecial()),
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(bottom: 10),
                        decoration: const BoxDecoration( border: Border(
                    bottom: BorderSide(width: 1, color: Color.fromARGB(120, 158, 158, 158)),
                  ), ),
                      child: ButtonComponentMauXam(
                          child: CustomerTextN.textButton13NormalWhite('Xem t???t c??? h??nh ???nh'),
            onPressed: () => {},
            ),
                    ),

                    ////// B???n b??
                Row(
                    children: <Widget>[
                      CustomerTextN.textThuCong('B???n b??', 20),                  
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Container(
                    height: 230,
                    child: friendSpecial()),
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(bottom: 10),
                        decoration: const BoxDecoration( border: Border(
                    bottom: BorderSide(width: 1, color: Color.fromARGB(120, 158, 158, 158)),
                  ), ),
                      child: Container(
                        child: GestureDetector(
                          
                          child: ButtonComponentMauXam(
                            onPressed: () {
                              Navigator.push(
context,
PageRouteBuilder(
pageBuilder: (context, animation1, animation2) => personalPageFriend(),
transitionDuration: const Duration(seconds: 0),
)
                        );
                            },
                              child: CustomerTextN.textButton13NormalWhite('Xem t???t c??? b???n b??'),
                                    ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomerTextN.textThuCong('B??i vi???t', 20),        
                            
                    ],
                    
                  ),
                  Container(
                      padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(bottom: 10),
                        decoration: const BoxDecoration( border: Border(
                    bottom: BorderSide(width: 1, color: Color.fromARGB(120, 158, 158, 158)),
                        ),
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: setwidththucong*0.3,
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(    
                                      color: Colors.grey,
                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(3),
                                            topRight: Radius.circular(3),
                                            bottomLeft: Radius.circular(3),
                                            bottomRight: Radius.circular(3)), 
                ),
                          child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      width: 15,
                                      child: const icon_boloc()),
                                    const SizedBox(width: 5,),
                                    CustomerTextN.textThuCong('B??? l???c', 13),
                                    Container(
                                      decoration: const BoxDecoration(  
                                         color: Color.fromARGB(113, 158, 158, 158),   
                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(3),
                                            topRight: Radius.circular(3),
                                            bottomLeft: Radius.circular(3),
                                            bottomRight: Radius.circular(3)), 
                ),
                                     
                                      padding: const EdgeInsets.all(3),
                                      child: CustomerTextN.textButton13Bold('1')),
                                    Container(
                                      width: 15,
                                      child: const icon_dong()),
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    margin: const EdgeInsets.only(bottom: 10),
                        decoration: const BoxDecoration( border: Border(
                    bottom: BorderSide(width: 1, color: Color.fromARGB(120, 158, 158, 158)),
                        ),
                        ),
                    child: const howdoyouthinkComponent()),
                  Container(
                    width: setwidththucong-16,
                    child: const postComponent()),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: CustomerTextN.textButton18Medium(
                  'Kh??ng c??n b??i vi???t n??o kh??c'),
            ),
          )

                ],
              ),
            ),
        ]
        ,
      )
      :
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    trangcaidat = !trangcaidat;
                  });
                },
                child: CustomerTextN.textButton13blue('Tr??? v???')),
              Row(children: <Widget>[
                    Container(
                       padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(  
                          border: Border.all(
                width: 1,
                color:  Colors.blueAccent ),
                                           color: const Color.fromARGB(113, 158, 158, 158),   
                            borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30)), 
                                            
                  ),
                      child: const Center(
                        child: icon_chinhsua(),
                      ),
                    ),                     
              const SizedBox(width: 10,),
              CustomerTextN.textThuCong('C??i ?????t trang c?? nh??n', 16),
              ]
              ),
              const SizedBox(height: 10,),
              Row(children: <Widget>[
                    Container(
                       padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(  
                          border: Border.all(
                width: 1,
                color:  Colors.blueAccent ),
                                           color: const Color.fromARGB(113, 158, 158, 158),   
                            borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30)), 
                                            
                  ),
                      child: const Center(
                        child: icon_kholuutru(),
                      ),
                    ),                     
              const SizedBox(width: 10,),
              CustomerTextN.textThuCong('Kho l??u tr???', 16),
              ]
              ),
              const SizedBox(height: 10,),
              Row(children: <Widget>[
                    Container(
                       padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(  
                          border: Border.all(
                width: 1,
                color:  Colors.blueAccent ),
                                           color: const Color.fromARGB(113, 158, 158, 158),   
                            borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30)), 
                                            
                  ),
                      child: const Center(
                        child: icon_luutrutin(),
                      ),
                    ),                     
              const SizedBox(width: 10,),
              CustomerTextN.textThuCong('L??u tr??? tin', 16),
              ]
              ),
              const SizedBox(height: 10,),
              Row(children: <Widget>[
                    Container(
                       padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(  
                          border: Border.all(
                width: 1,
                color:  Colors.blueAccent ),
                                           color: const Color.fromARGB(113, 158, 158, 158),   
                            borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30)), 
                                            
                  ),
                      child: const Center(
                        child: icon_nhatkyhoatdong(),
                      ),
                    ),                     
              const SizedBox(width: 10,),
              CustomerTextN.textThuCong('Nh???t k?? ho???t ?????ng', 16),
              ]
              ),
              const SizedBox(height: 10,),
              Row(children: <Widget>[
                    Container(
                       padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(  
                          border: Border.all(
                width: 1,
                color:  Colors.blueAccent ),
                                           color: const Color.fromARGB(113, 158, 158, 158),   
                            borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30)), 
                                            
                  ),
                      child: const Center(
                        child: icon_quanlybaiviet(),
                      ),
                    ),                     
              const SizedBox(width: 10,),
              CustomerTextN.textThuCong('Qu???n l?? b??i vi???t', 16),
              ]
              ),
              const SizedBox(height: 10,),
              Row(children: <Widget>[
                    Container(
                       padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(  
                          border: Border.all(
                width: 1,
                color:  Colors.blueAccent ),
                                           color: const Color.fromARGB(113, 158, 158, 158),   
                            borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30)), 
                                            
                  ),
                      child: const Center(
                        child: icon_search(),
                      ),
                    ),                     
              const SizedBox(width: 10,),
              CustomerTextN.textThuCong('T??m ki???m trong trang', 16),
              ]
              ),
              const SizedBox(height: 10,),
              CustomerTextN.textThuCong('Li??n k???t trang c?? nh??n c???a b???n', 14),
              const SizedBox(height: 10,),
              CustomerTextN.textButton13Grey('https://itp29secret.com'),
              const SizedBox(height: 10,),
              ButtonComponentMauXam(
                child: CustomerTextN.textButton13Normal('sao ch??p li??n k???t'),
                onPressed: () => {},)
            ],
          ),
        ),
      ),
    
    );
  
  }
}