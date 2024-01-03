
import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:siddhapura/screes/new_enquire_screen.dart';
import 'package:siddhapura/screes/product_details/product_screen.dart';
import 'package:siddhapura/screes/recent_enquiries_screen.dart';
import 'package:siddhapura/screes/send_brochure_screen.dart';
import 'package:siddhapura/widgets/custom_button.dart';
import 'package:siddhapura/widgets/custom_drawer.dart';
import '../constant/app_colors.dart';
import '../constant/app_images.dart';
import '../controller/recent_enquiries_controller.dart';
import '../widgets/custom_circle_slider.dart';
import 'about_us_screen.dart';

class HomeScreen2 extends StatefulWidget {
  final String user_id;
   bool isLoad;
   HomeScreen2({super.key, required this.user_id,this.isLoad = false});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {

  final recentEnquiriesController = Get.put(RecentEnquiriesController());
  CarouselController buttonCarouselController = CarouselController();
  int currentIndex = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isAnim = false;

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          Container(
            child:Column(
              children: [
                Container(
                  width: size.width,
                  height: size.width * 0.28,
                  color: primeColor,
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: (){
                            if(scaffoldKey.currentState!.isDrawerOpen){
                              scaffoldKey.currentState!.closeDrawer();
                            }else{
                              scaffoldKey.currentState!.openDrawer();

                            }
                          },

                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/icons/menu.svg",width: 20,height: 20,color: Colors.white,),
                        )
                      ),
                      Container(
                          width: size.width * 0.8,
                          height: size.width * 0.18,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: SvgPicture.asset(logo)),
                    ],
                  ),
                ),
                Divider(color: yellowColor,height: 0.5,),
                Container(
                    width: size.width,
                  height:size.width*0.5,
                  child: Stack(
                   children: [
                     Center(
                       child: CarouselSlider(
                           carouselController: buttonCarouselController,
                           items: [
                             Container(
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage(slide1),
                                   fit: BoxFit.cover,
                                 ),
                               ),
                             ),
                             Container(
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage(slide2),
                                   fit: BoxFit.cover,
                                 ),
                               ),
                             ),
                             Container(
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage(slide3),
                                   fit: BoxFit.cover,
                                 ),
                               ),
                             ),
                           ],
                           options: CarouselOptions(
                             height: size.width * 0.6,
                             viewportFraction: 1,
                             initialPage: 0,
                             disableCenter: true,
                             enableInfiniteScroll: true,
                             reverse: false,
                             autoPlay: true,
                             autoPlayInterval: Duration(seconds: 3),
                             autoPlayAnimationDuration: Duration(milliseconds: 800),
                             autoPlayCurve: Curves.easeInOut,
                             // enlargeCenterPage: true,
                             // enlargeFactor: 0.3,
                             onPageChanged: (pos,reason){
                               currentIndex = pos;
                               setState(() {});
                               print(reason);
                               print(CarouselPageChangedReason.controller);
                             },
                             scrollDirection: Axis.horizontal,
                           )
                       ),
                     ),
                     Positioned(
                       right: 0,
                       left: 0,
                       bottom: 10,
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: indicators(3,currentIndex)),
                     ),
                   ],
                  ),
                ),
                SizedBox(height: size.width*0.11,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewEnquiresScreen(user_id: widget.user_id)));
                      },
                        width: size.width*0.4,height: size.width*0.4,title: "New Enquiry", image: 'assets/icons/addProduct.svg'),
                    SizedBox(width: size.width*0.07,),
                    CustomButton(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => RecentEnquiriesScreen(user_id: widget.user_id))),
                        width: size.width*0.4,height: size.width*0.4,title: "Recent Enquiries", image: 'assets/icons/home_recent_enquires_icon.svg'),
                  ],
                ),
                SizedBox(height: size.width*0.068,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen())),
                        width: size.width*0.4,height: size.width*0.4,title: "About Us", image: 'assets/icons/home_about_us_icon.svg'),
                    SizedBox(width: size.width*0.07,),
                        CustomButton( onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen())),
                        width: size.width*0.4,height: size.width*0.4,title: "Products", image: 'assets/icons/home_products_icon.svg'),
                  ],
                ),
                SizedBox(height: size.width*0.09,),
                CustomButton(
                  onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => SendBrochureScreen())).then((value) {
                    if(value!=null && value){
                      setState(() {
                        isAnim = true;
                      Future.delayed(Duration(seconds: 1,),(){
                        isAnim = false;
                         });
                      });

                    }
                  }),
                    width: size.width*0.87,
                    height: size.width*0.17,
                    title: "Send Brochure",
                    color: yellowColor,fontColor: primeColor)
              ],
            ),
          ),
          if(isAnim)Padding(
            padding:  EdgeInsets.only(top:size.height * 0.22 ),
            child: Center(child: Lottie.asset('assets/anim.json', width: 200, height: 200)),
          ),

        ],
      ),
      drawer: customDrawer(context,widget.user_id),
    );
  }

  void init() async {
    print("widget.user_id ${widget.user_id}");
   await recentEnquiriesController.recentEnquiriesData(widget.user_id);
   if(widget.isLoad){
     setState(() {
       isAnim = true;
       Future.delayed(Duration(seconds: 1,),(){
         isAnim = false;
       });
     });
   }
  }


}
