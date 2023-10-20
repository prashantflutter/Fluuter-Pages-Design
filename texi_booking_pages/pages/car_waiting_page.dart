import 'package:flutter/material.dart';
import 'package:prashant_demo/custom_widgets/text_widgets/title_text_widgets.dart';

class CarWaitingPage extends StatelessWidget {
  const CarWaitingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Color(0XFF000B44),
                Color(0XFF489CFE),
           ],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap:(){
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,)),
                // SizedBox(width: 10,),
                TitleText(text: "Back",color: Colors.white,fontSize: 20,),
                SizedBox(width: 85,),
                TitleText(text: "Xo",color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),
                TitleText(text: "t",color: Colors.yellow,fontSize: 30,fontWeight: FontWeight.bold,),
                TitleText(text: "axi",color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),
                SizedBox(width: 85,),
                Image.asset("assets/texi_booking/user.png",width: 30,height: 30,)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Image.asset("assets/texi_booking/ellipse.png",width: 30,height: 30,),
                SizedBox(width: 20,),
                TitleText(text: "177A Bleecker Street,NY",color: Colors.white,fontSize: 22,fontWeight: FontWeight.w800,)
              ],
            ),
            Container(
              width: 8,
              height: 40,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/texi_booking/line.png"),fit: BoxFit.cover),
              ),
            ),
            Row(
              children: [
                Image.asset("assets/texi_booking/ellipse.png",width: 30,height: 30,),
                SizedBox(width: 20,),
                TitleText(text: "Greenwich Village",color: Colors.white,fontSize: 22,fontWeight: FontWeight.w800,)
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/texi_booking/Man.png",width: 80,height: 80,),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(text: "Henry Wick",color: Colors.white,fontSize: 20,),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 25,),
                            SizedBox(width: 5,),
                            TitleText(text: "4.8",color: Colors.white,fontSize: 20,),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TitleText(text: "9 km",color: Colors.white,fontSize: 18,),
                    SizedBox(height: 10,),
                    TitleText(text: "\$30.05",color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 3
                  ),
                  borderRadius: BorderRadius.circular(100),

                ),
                child: Image.asset("assets/texi_booking/edit_text.png",width: 22,height: 22,),
                 ),
                Container(
                  width: 145,
                  height: 145,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: TitleText(text: "6 Min",color: Colors.white,fontSize: 35,),
                ),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(100),

                  ),
                  child: Image.asset("assets/texi_booking/cancel.png",width: 22,height: 22,),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleText(text:"Your journey will \n     arrive soon",color: Colors.white,),
              ],
            ),
            Container(
            width: double.infinity,
           height: 280,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/texi_booking/second_car.png",),fit: BoxFit.cover),
          ),
        ),


          ],
        ),
      ),
    );
  }
}
