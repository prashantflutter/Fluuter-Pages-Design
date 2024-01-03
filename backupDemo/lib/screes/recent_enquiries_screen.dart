import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/app_colors.dart';
import '../constant/app_string.dart';
import '../controller/recent_enquiries_controller.dart';
import 'new_enquire_screen.dart';


class RecentEnquiriesScreen extends StatefulWidget {
  final String user_id;
  const RecentEnquiriesScreen({super.key, required this.user_id});

  @override
  State<RecentEnquiriesScreen> createState() => _RecentEnquiriesScreenState();
}

class _RecentEnquiriesScreenState extends State<RecentEnquiriesScreen> {

  final recentEnquiriesController = Get.put(RecentEnquiriesController());

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
                  Text(RecentENQUIRY,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900)),
                ],
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
