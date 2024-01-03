import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siddhapura/constant/api_string.dart';
import 'package:siddhapura/screes/product_details/product_details_view.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_string.dart';


class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
                  Text(Products,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900)),
                ],
              ),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  children:[
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: primeColor),
                        ),
                      ),
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: primeColor,
                        ),
                        leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                        title: Text('Press Break',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        children:List.generate(pressBreakList.length, (index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite(uri: productUrlList[index], title:pressBreakList[index], baseURl: productUrl,)));
                            },
                            child: Container(
                              width: size.width,
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(pressBreakList[index],textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: primeColor),
                        ),
                      ),
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: primeColor,
                        ),
                        leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                        title: Text('Shearing',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        children:List.generate(product2List.length, (index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite( baseURl: shearingUrl,uri: productUrl2List[index], title:product2List[index],)));
                            },
                            child: Container(
                              width: size.width,
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(product2List[index],textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          // top: BorderSide(color: primeColor),
                          bottom: BorderSide(color: primeColor),
                        ),
                      ),
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: primeColor,
                        ),
                        leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                        title: Text('Plate Rolling',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        children:List.generate(product3List.length, (index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite( baseURl: plateRollingUrl,uri: productUrl3List[index], title:product3List[index],)));
                            },
                            child: Container(
                              width: size.width,
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(product3List[index],textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          // top: BorderSide(color: primeColor),
                          bottom: BorderSide(color: primeColor),
                        ),
                      ),
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: primeColor,
                        ),
                        leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                        title: Text('Power Press',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        children:List.generate(product4List.length, (index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite( baseURl: powerPressUrl,uri: productUrl4List[index], title:product4List[index],)));
                            },
                            child: Container(
                              width: size.width,
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(product4List[index],textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          // top: BorderSide(color: primeColor),
                          bottom: BorderSide(color: primeColor),
                        ),
                      ),
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: primeColor,
                        ),
                        leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                        title: Text('Hydraulic Press',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        children:List.generate(product5List.length, (index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite( baseURl: hydraulicPressUrl,uri: productUrl5List[index], title:product5List[index],)));
                            },
                            child: Container(
                              width: size.width,
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(product5List[index],textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          // top: BorderSide(color: primeColor),
                          bottom: BorderSide(color: primeColor),
                        ),
                      ),
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: primeColor,
                        ),
                        leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                        title: Text('Profile Bending Machine',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        children:List.generate(product6List.length, (index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite( baseURl: bendingMachineUrl,uri: productUrl6List[index], title:product6List[index],)));
                            },
                            child: Container(
                              width: size.width,
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(product6List[index],textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          // top: BorderSide(color: primeColor),
                          bottom: BorderSide(color: primeColor),
                        ),
                      ),
                      child: ExpansionTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_down,
                          color: primeColor,
                        ),
                        leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                        title: Text('Others',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        children:List.generate(product7List.length, (index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite( baseURl: OthersMachineUrl,uri: productUrl7List[index], title:product7List[index],)));
                            },
                            child: Container(
                              width: size.width,
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(product7List[index],textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite( baseURl: fiberMachineUrl,uri: "cnc-fiber-laser-cutting-machine/", title:"CNC Fiber Laser Cutting Machine",)));
                    },

                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            // top: BorderSide(color: primeColor),
                            bottom: BorderSide(color: primeColor),
                          ),
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                          title: Text('CNC Fiber Laser Cutting Machine',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyWebsite( baseURl: FormingMachineUrl,uri: "roll-forming-machine/", title:"Roll Forming Machine",)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            // top: BorderSide(color: primeColor),
                            bottom: BorderSide(color: primeColor),
                          ),
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset('assets/icons/aboutIcons.svg',width: 25,height: 25,),
                          title: Text('Roll Forming Machine',style: GoogleFonts.poppins(fontSize: 14,color: primeColor,fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}