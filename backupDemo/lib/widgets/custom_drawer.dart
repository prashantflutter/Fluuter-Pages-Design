import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:siddhapura/constant/app_colors.dart';
import 'package:siddhapura/screes/about_us_screen.dart';
import 'package:siddhapura/screes/product_details/product_screen.dart';
import '../constant/app_images.dart';
import '../screes/new_enquire_screen.dart';
import '../screes/recent_enquiries_screen.dart';
import 'custom_button.dart';

Widget customDrawer(BuildContext context,String user_id) {
final size = MediaQuery.of(context).size;
  return Drawer(
    width: size.width*0.7,
    backgroundColor: primeColor,
    child: Column(
      children: [
        SizedBox(height: size.width*0.1,),
        Container(
            width: size.width * 0.8,
            height: size.width * 0.18,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SvgPicture.asset(logo)),
        SizedBox(height: size.width*0.1,),
        Divider(color: Colors.white,height: 0.5,),
        CustomRowButton(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => NewEnquiresScreen(user_id: user_id))),
            width: size.width,height: size.width*0.1,title: "Add New Enquiry", image: 'assets/icons/addProduct.svg'),
        Divider(color: Colors.white,height: 0.5,),
        CustomRowButton(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => RecentEnquiriesScreen(user_id: user_id))),
            width: size.width,height: size.width*0.1,title: "Recent Enquiries", image: 'assets/icons/home_recent_enquires_icon.svg'),
        Divider(color: Colors.white,height: 0.5,),
        CustomRowButton(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => NewEnquiresScreen(user_id: user_id))),
            width: size.width,height: size.width*0.1,title: "Products", image: 'assets/icons/home_products_icon.svg'),
        Divider(color: Colors.white,height: 0.5,),
        CustomRowButton(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen())),
            width: size.width,height: size.width*0.1,title: "About Us", image: 'assets/icons/home_about_us_icon.svg'),
        Divider(color: Colors.white,height: 0.5,),
        CustomRowButton(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen())),
            width: size.width,height: size.width*0.1,title: "Logout", image: 'assets/icons/logOut.svg'),
        Divider(color: Colors.white,height: 0.5,),
        SizedBox(height: size.width*0.9,),
        CustomButton(
            onTap: ()=> Navigator.of(context).pop(),
            width: size.width*0.87,
            height: size.width*0.14,
            title: "Send Brochure",
            color: yellowColor,fontColor: primeColor)
      ],
    ),
  );
}