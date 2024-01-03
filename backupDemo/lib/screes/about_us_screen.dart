import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/app_colors.dart';
import '../constant/app_string.dart';


class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.width * 0.23,
                color: primeColor,
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,)),
                    Text(AboutUs,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900)),
                    SizedBox(width: size.width * 0.1,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Center(
                  child: Text("INDUSTRIES WE SERVE",maxLines: 2,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: primeColor,fontSize: 18,fontWeight: FontWeight.w900))
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(about1,maxLines: 4,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: primeColor,fontSize: 16,fontWeight: FontWeight.normal))
              ),
              SizedBox(height: 10,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(about2,maxLines: 4,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: primeColor,fontSize: 16,fontWeight: FontWeight.normal))
              ),
              SizedBox(height: 10,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(about3,maxLines: 4,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: primeColor,fontSize: 16,fontWeight: FontWeight.normal))
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(width: size.width*0.45,height:size.width *0.35, child: Image.asset("assets/pages/img1.jpg",fit: BoxFit.cover,)),
                      SizedBox(height: 5,),
                      Text("Automotive",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 12,fontWeight: FontWeight.w600))
                    ],
                  ),
                  Column(
                    children: [
                      Container(width: size.width*0.45,height:size.width *0.35, child: Image.asset("assets/pages/img2.jpg",fit: BoxFit.cover,)),
                      SizedBox(height: 5,),
                      Text("Metal-Fabrication",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 12,fontWeight: FontWeight.w600))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(width: size.width*0.45,height:size.width *0.35, child: Image.asset("assets/pages/img3.jpg",fit: BoxFit.cover,)),
                      SizedBox(height: 5,),
                      Text("Metal Structure",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 12,fontWeight: FontWeight.w600))
                    ],
                  ),
                  Column(
                    children: [
                      Container(width: size.width*0.45,height:size.width *0.35, child: Image.asset("assets/pages/img4.jpg",fit: BoxFit.cover,)),
                      SizedBox(height: 5,),
                      Text("Metal Forming",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 12,fontWeight: FontWeight.w600))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(width: size.width*0.45,height:size.width *0.35, child: Image.asset("assets/pages/img5.jpg",fit: BoxFit.cover,)),
                      SizedBox(height: 5,),
                      Text("Air Craft",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 12,fontWeight: FontWeight.w600))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Container(
                  width: size.width,
                  height:  size.width*0.35,
                  // color: primeColor,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text(VISION,maxLines: 4,textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 16,fontWeight: FontWeight.bold)),
                      Text(VISION2,maxLines: 4,textAlign: TextAlign.center,style: GoogleFonts.poppins(color:primeColor,fontSize: 16,fontWeight: FontWeight.normal)),
                    ],
                  )
              ),
              SizedBox(height: 10,),
              Container(
                  width: size.width,
                  height:  size.width*0.35,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  // color: primeColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("WHY US",maxLines: 4,textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 16,fontWeight: FontWeight.bold)),
                      Text(WhyUS,maxLines: 4,textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 16,fontWeight: FontWeight.normal)),
                    ],
                  )
              ),
              SizedBox(height: 10,),
              Container(
                  width: size.width,
                  height:  size.width*0.35,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  // color: primeColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("OUR TEAM",maxLines: 4,textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 16,fontWeight: FontWeight.bold)),
                      Text(OurTEAM,maxLines: 4,textAlign: TextAlign.center,style: GoogleFonts.poppins(color: primeColor,fontSize: 16,fontWeight: FontWeight.normal)),
                    ],
                  )
              ),
              SizedBox(height: 25,),
              Container(
                width: size.width,
                color: primeColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 35,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 10),
                      child: Text("Contact Info : ",textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 30,),
                        Icon(Icons.call,size: 20,color:Colors.white,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("+91-281-2233387, 2220285, 2220302",textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 30,),
                        Icon(Icons.call,size: 20,color:Colors.white,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("+91 7567 444 666, +91 9879 340 900",textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 30,),
                        Icon(Icons.email,size: 20,color:Colors.white,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("machinery@siddhapura.com",textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Corporate Office : ",textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 30,),
                        Icon(Icons.location_pin,size: 20,color:Colors.white,),
                        SizedBox(width: 20,),
                        Expanded(child: Text(CorporateOffice,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
                        SizedBox(width: 20,),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Factory & Registered Office : ",textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 30,),
                        Icon(Icons.location_pin,size: 20,color:Colors.white,),
                        SizedBox(width: 20,),
                        Expanded(child: Text(FactoryOffice,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
                        SizedBox(width: 20,),
                      ],
                    ),
                    SizedBox(height: 35,),
                    Container(
                      width: size.width,
                      color: yellowColor,
                      padding: EdgeInsets.only(bottom: 20,top: 20),
                      child: Text("© Copyright 2024 Siddhapura Reserve all the Rights",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}