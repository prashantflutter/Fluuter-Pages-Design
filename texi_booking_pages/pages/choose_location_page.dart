import 'package:flutter/material.dart';
import 'package:prashant_demo/custom_widgets/text_widgets/title_text_widgets.dart';
import 'package:prashant_demo/list_of_program/texi_booking_pages/pages/car_waiting_page.dart';
import 'package:prashant_demo/list_of_program/texi_booking_pages/pages/journey_page.dart';

class ChooseLocationPAge extends StatelessWidget {
  const ChooseLocationPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
                width: double.infinity,
                height: size - 250 ,
                child: Image.asset('assets/texi_booking/map_bc.png',fit: BoxFit.cover,)),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
              width: double.infinity,
              height: 250,
              color: Colors.blue.shade600,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text("Nearest Cab",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800),),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CarWaitingPage()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width:65,
                                height: 65,
                                padding: EdgeInsets.only(top: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Image.asset("assets/texi_booking/Man.png",fit: BoxFit.cover,)),
                            SizedBox(width: 15,),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitleText(text: "Henry Wick",color: Colors.black,),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      SizedBox(width: 10,),
                                      TitleText(text: "5.0",color: Colors.black,fontWeight: FontWeight.w800,),

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => JourneyPage()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width:65,
                                height: 65,
                                padding: EdgeInsets.only(top: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Image.asset("assets/texi_booking/Gamer.png",fit: BoxFit.cover,)),
                            SizedBox(width: 15,),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitleText(text: "John Cina",color: Colors.black,),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                                      Icon(Icons.star_half,color: Colors.yellow,size: 25,),
                                      SizedBox(width: 10,),
                                      TitleText(text: "4.5",color: Colors.black,fontWeight: FontWeight.w800,),

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
                top: 50,
                right: 0,
                left: 0,
                child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      color: Colors.white54,
                    borderRadius: BorderRadius.circular(12),
                    // border: Border.all(
                    //   color: Colors.black45,
                    //   width: 2,
                    // ),
                 ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Icon(Icons.search,size: 28,color: Colors.grey,),
                      SizedBox(width: 55,),
                      Text("Search Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),)
                    ],
                  ),
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 250,
              child: SizedBox(
                width: 100,
                height: 200,
                child: Image.asset("assets/texi_booking/pin_map.png",fit: BoxFit.contain,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
