import 'package:flutter/material.dart';
import 'package:prashant_demo/custom_widgets/text_widgets/title_text_widgets.dart';

import 'choose_location_page.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF0176FF),
                Color(0xFF001D3F),
              ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                      height: 50,
                      child: IconButton(onPressed: (){
                          Navigator.of(context).pop();

                      }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 25,))),
                  SizedBox(width: 10,),
                  TitleText(text: "Back",color: Colors.white,),
                  SizedBox(width: 60,),
                  TitleText(text: "Xo",color: Colors.white,fontSize: 30,),
                  TitleText(text: "t",color: Colors.yellow,fontSize: 30,),
                  TitleText(text: "axi",color: Colors.white,fontSize: 30,),
                  SizedBox(width: 60,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/texi_booking/Man.png",),fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            TitleText(text: "Blackgold Town",color: Colors.white,fontSize: 30,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             Image.asset("assets/texi_booking/pump_white.png",width: 20,height: 20,),
             SizedBox(width: 10,),
             TitleText(text: "Henry Wick’s Car",color: Colors.white,fontSize: 20,),
             ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/texi_booking/car_yellow.png"),fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 65,
                  height: 480,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.keyboard_arrow_up_rounded,color: Colors.white,size: 50,),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 64,
                        height: 300,
                        decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1
                            ),
                          borderRadius: BorderRadius.circular(19.73),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF004AA0),
                              blurRadius: 7,
                              spreadRadius: 2,
                              offset: Offset(0, 2),
                            )
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20,),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/texi_booking/car_seat.png"),fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 8,),
                            TitleText(text: "4 Seats",color: Colors.white,fontSize: 12,),
                            SizedBox(height: 15,),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/texi_booking/money.png"),fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 8,),
                            TitleText(text: "45/km",color: Colors.white,fontSize: 12,),
                            SizedBox(height: 15,),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/texi_booking/pickup_car.png"),fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 8,),
                            TitleText(text: "230km/h",color: Colors.white,fontSize: 12,),
                            SizedBox(height: 15,),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/texi_booking/pump_yellow.png"),fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 8,),
                            TitleText(text: "6/150km",color: Colors.white,fontSize: 12,),
                            SizedBox(height: 15,),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,size: 50,),

                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLocationPAge()));
              },
              child: Container(
                width: double.infinity,
                height: 130,
                alignment: Alignment.center,
                child: Container(
                  width: 120,
                  height: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE100),
                    borderRadius: BorderRadius.circular(200),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow.withOpacity(0.6),
                        blurRadius: 3,
                        spreadRadius: 5,
                        offset: Offset(0, 0),
                      ),
                    ]
                  ),
                  child: Container(
                    width: 110,
                    height: 110,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFF001D3F),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: TitleText(text: 'Start',color: Colors.white,fontSize: 25,),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
