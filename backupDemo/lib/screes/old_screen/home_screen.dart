
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_images.dart';
import '../../constant/app_string.dart';
import '../../controller/recent_enquiries_controller.dart';
import '../new_enquire_screen.dart';
import '../../widgets/custom_circle_slider.dart';

class HomeScreen extends StatefulWidget {
  final String user_id;
  const HomeScreen({super.key, required this.user_id});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final recentEnquiriesController = Get.put(RecentEnquiriesController());
  CarouselController buttonCarouselController = CarouselController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
                  Container(
                      width: size.width * 0.8,
                      height: size.width * 0.18,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: SvgPicture.asset(logo)),
                  IconButton(onPressed: ()async{
                    SharedPreferences loginData = await SharedPreferences.getInstance();
                     setState(() {
                       loginData.setBool('login', true);
                       loginData.remove("user_id");
                       String user_id = loginData.getString("user_id")?? "";
                       print("user_id logout ==> $user_id");
                     });
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  }, icon: Image.asset(logout,width: 20,height: 20,color: Colors.white,))
                ],
              ),
            ),
            SizedBox(height: 10,),
            CarouselSlider(
              carouselController: buttonCarouselController,
                items: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(slide1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(slide2),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(slide3),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: size.width * 0.48,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInOut,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (pos,reason){
                    currentIndex = pos;
                    setState(() {});
                    print(reason);
                    print(CarouselPageChangedReason.controller);
                  },
                  scrollDirection: Axis.horizontal,
                )
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(3,currentIndex)),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewEnquiresScreen(user_id: widget.user_id,)));
              },
              child: Container(
                width: size.width * 0.8,
                height:size.width * 0.23,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: primeColor.withOpacity(0.3),
                      blurRadius: 2,
                      offset: Offset(0, 5)
                    ),

                  ]
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      width:45,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: primeColor,
                          borderRadius: BorderRadius.circular(50),),
                      child: Image.asset(plus,width: 20,height: 20,color: Colors.white,)),
                    SizedBox(width: 20,),
                    Text(addEnquiry,style: GoogleFonts.poppins(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w900),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: size.width*0.068),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(recentEnquiry,style: GoogleFonts.poppins(fontSize: 20,color: darkFontColor,fontWeight: FontWeight.w900),),
                      ],
                    ),
                  //recentEnquiriesController.isLoading.value?SizedBox(width:150,height:150,child: Center(child: CircularProgressIndicator(color: primeColor,),)):
                  GetX<RecentEnquiriesController>(
                     builder: (ctr) {
                       return Expanded(
                            child: ListView.builder(
                            itemCount: recentEnquiriesController.enquiriesDataList.length,
                            shrinkWrap: false,
                            itemBuilder: (context,index){
                              var mIndex = recentEnquiriesController.enquiriesDataList[index];
                          return Container(
                            width: size.width,
                            height: size.width*0.18,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: lightColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 20,),
                                      Text(mIndex.uniqueId.toString(),style: GoogleFonts.poppins(fontSize: 12,color: darkFontColor,fontWeight: FontWeight.w600),),
                                      SizedBox(width: 10,),
                                      Text(Shakti,style: GoogleFonts.poppins(fontSize: 16,color: darkFontColor,fontWeight: FontWeight.w900),),
                                    ],
                                  ),
                                  Container(
                                    width:size.width*0.65,
                                    height:1.2,
                                    margin:EdgeInsets.only(left: size.width*0.055,top: 5,bottom: 5),
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                      color: dividerColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),

                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 20,),
                                      Text(mIndex.createdAt.toString(),style: GoogleFonts.poppins(fontSize: 14,color: darkFontColor,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ],
                              ),
                                IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NewEnquiresScreen(user_id: widget.user_id,)));}, icon: SvgPicture.asset("assets/icons/edit_icon.svg"))

                              ],
                            ),
                          );
                        })
                        );
                     }
                   )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void init() async {
    print("widget.user_id ${widget.user_id}");
   await recentEnquiriesController.recentEnquiriesData(widget.user_id);
  }
}
