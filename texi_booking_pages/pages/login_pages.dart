import 'package:flutter/material.dart';
import 'package:prashant_demo/custom_widgets/text_widgets/title_text_widgets.dart';
import 'package:prashant_demo/list_of_program/texi_booking_pages/pages/car_details_page.dart';
import 'package:prashant_demo/list_of_program/texi_booking_pages/pages/choose_location_page.dart';

class TaxiLoginPage extends StatelessWidget {
  const TaxiLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
          decoration: BoxDecoration(
          gradient: RadialGradient(
            focal: Alignment(0, 0.5),
              colors: [
            Color(0xFFEFF6FF),
            Color(0xFF0075FF),
            Color(0xFF001C31),
          ])
          ),
            child:  Image(image: AssetImage("assets/texi_booking/taxi_booking.png"),fit: BoxFit.cover,),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color:Color(0xFFFFFFFF).withOpacity(0.3),
              // gradient: RadialGradient(colors: [
              //   Color(0xFF206FAB).withOpacity(0.3),
              //   Color(0xFFFFFFFF).withOpacity(0.8),
              // ],
              //   transform: GradientRotation(5.0),
              // ),
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            right: 10,
            child:  Column(children: [
              Container(
                width: 180,
                height: 180,
                child: Image.asset('assets/texi_booking/pin_map.png',fit: BoxFit.contain,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleText(text: 'Xo',color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold,),
                  TitleText(text: 't',color: Color(0XFFFFD07D),fontSize: 45,fontWeight: FontWeight.bold,),
                  TitleText(text: 'axi',color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold,),
                ],
              ),
              TitleText(text: "Arrive your destination safely",color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500,),
              SizedBox(height: 100,),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF7043),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLocationPAge()));
                    },
                    child: TitleText(text: 'Choose Loacrion',color: Colors.white,fontSize:18,fontWeight: FontWeight.bold,)),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CarDetails()));
                    },
                    child: TitleText(text: 'Car details',color: Color(0xFFFF7043),fontSize: 18,fontWeight: FontWeight.bold,)),
              ),
            ],),
          ),

        ],
      ),
    );
  }
}
