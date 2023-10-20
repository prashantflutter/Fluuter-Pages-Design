import 'package:flutter/material.dart';
import 'package:prashant_demo/custom_widgets/text_widgets/title_text_widgets.dart';

class JourneyPage extends StatelessWidget {
  const JourneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF107EFF),
              Color(0xFF9FE6FD),
          ],
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.of(context).pop();
                    },
                      child: Icon(Icons.keyboard_arrow_left_rounded,size: 30,color: Colors.white,),),
                  // SizedBox(width: 10,),
                  TitleText(text: "Back",color: Colors.white,fontSize: 16,),
                  SizedBox(width: 65,),
                  TitleText(text: "Xo",color: Colors.white,fontSize: 30,),
                  TitleText(text: "t",color: Colors.yellow,fontSize: 30,),
                  TitleText(text: "axi",color: Colors.white,fontSize: 30,),
                  SizedBox(width: 65,),
                  Image.asset("assets/texi_booking/user.png",width: 25,height: 25,)

                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              width: double.infinity,
              height: 600,
              child: Stack(
                children: [
                  Positioned(
                    top:0,
                    bottom: 0,
                    right: -100,
                    child: Container(
                      width: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/texi_booking/car_left_side.png"),fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                      top: 50,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Image.asset("assets/texi_booking/ellipse.png",width: 25,height: 25,),
                                  SizedBox(width: 10,),
                                  TitleText(text: "177A Bleecker Street,NY",color: Colors.white,fontSize: 23,)
                                ],
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              // padding: EdgeInsets.only(left: 30),
                              alignment: Alignment.center,
                              child: Image.asset('assets/texi_booking/line.png',fit: BoxFit.cover,),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 33),
                              child: Row(
                                children: [
                                  Image.asset("assets/texi_booking/ellipse.png",width: 25,height: 25,),
                                  SizedBox(width: 10,),
                                  TitleText(text: "Greenwich Village",color: Colors.white,fontSize: 23,)
                                ],
                              ),
                            ),
                            SizedBox(height: 25,),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(right: 35),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                TitleText(text: 'Your Driver',color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800,),
                                  SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      Image.asset("assets/texi_booking/Man.png",width: 80,height: 80,),
                                      SizedBox(width: 20,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TitleText(text: 'Henry Wick',color: Colors.white,fontSize: 18,
                                            fontWeight: FontWeight.w500,),
                                          SizedBox(height: 8,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star_rate_rounded,color: Colors.yellow.shade500,size: 30,),
                                              SizedBox(width: 5,),
                                              TitleText(text: '4.8',color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800,),

                                            ],
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: 250,
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitleText(text: 'Price',color: Colors.white,fontSize: 18,),
                                  SizedBox(height: 10,),
                                  TitleText(text: '\$30.05',color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: 150,
                              height: 180,
                              margin: EdgeInsets.only(right: 100),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                                border: Border.all(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  TitleText(text: 'Your journey will arrive soon',color: Colors.white,fontSize: 17,),
                                  SizedBox(height: 5,),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(150),
                                    ),
                                    child: TitleText(text: "6 Min",color: Colors.white,fontWeight: FontWeight.bold,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),

                  // Positioned(
                  //   bottom: 0,
                  //     right: 0,
                  //     left: 0,
                  //     child: Container(
                  //       width: double.infinity,
                  //       height: 100,
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               Container(
                  //                 width:50,
                  //                 height: 50,
                  //                 alignment: Alignment.center,
                  //                 decoration: BoxDecoration(
                  //                   border: Border.all(
                  //                     color: Colors.white,
                  //                     width: 1.5,
                  //                   ),
                  //                   borderRadius: BorderRadius.circular(500),
                  //                 ),
                  //                 child: Image.asset('assets/texi_booking/phone.png',width: 25,height: 25,),
                  //               ),
                  //               SizedBox(height: 8,),
                  //               TitleText(text: "Call Driver",color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal,)
                  //             ],
                  //           ),
                  //           Column(
                  //             children: [
                  //               Container(
                  //                 width:50,
                  //                 height: 50,
                  //                 alignment: Alignment.center,
                  //                 decoration: BoxDecoration(
                  //                   border: Border.all(
                  //                     color: Colors.white,
                  //                     width: 1.5,
                  //                   ),
                  //                   borderRadius: BorderRadius.circular(500),
                  //                 ),
                  //                 child: Image.asset('assets/texi_booking/phone.png',width: 25,height: 25,),
                  //               ),
                  //               SizedBox(height: 8,),
                  //               TitleText(text: "Call Driver",color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal,)
                  //             ],
                  //           ),
                  //           Column(
                  //             children: [
                  //               Container(
                  //                 width:50,
                  //                 height: 50,
                  //                 alignment: Alignment.center,
                  //                 decoration: BoxDecoration(
                  //                   border: Border.all(
                  //                     color: Colors.white,
                  //                     width: 1.5,
                  //                   ),
                  //                   borderRadius: BorderRadius.circular(500),
                  //                 ),
                  //                 child: Image.asset('assets/texi_booking/phone.png',width: 25,height: 25,),
                  //               ),
                  //               SizedBox(height: 8,),
                  //               TitleText(text: "Call Driver",color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal,)
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  // ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width:60,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(0, 0),
                              color: Colors.white.withOpacity(0.1),
                            )
                          ],
                          borderRadius: BorderRadius.circular(500),
                        ),
                        child: Image.asset('assets/texi_booking/phone.png',width: 25,height: 25,),
                      ),
                      SizedBox(height: 8,),
                      TitleText(text: "Call Driver",color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal,)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width:60,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(500),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(0, 0),
                              color: Colors.white.withOpacity(0.1),
                            )
                          ],
                        ),
                        child: Image.asset('assets/texi_booking/edit_text.png',width: 25,height: 25,),
                      ),
                      SizedBox(height: 8,),
                      TitleText(text: "Edit Details",color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal,)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width:60,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(500),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(0, 0),
                              color: Colors.white.withOpacity(0.1),
                            )
                          ],
                        ),
                        child: Image.asset('assets/texi_booking/cancel.png',width: 25,height: 25,),
                      ),
                      SizedBox(height: 8,),
                      TitleText(text: "Cancel",color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal,)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
