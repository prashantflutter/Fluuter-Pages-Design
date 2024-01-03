import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siddhapura/widgets/custom_dialog.dart';
import '../constant/api_string.dart';
import '../screes/home_screen2.dart';

class AddEnquiryController extends GetxController{

  Dio dio = Dio();


  Future<void>AddEnquirySource({
    required BuildContext context,
    required String user_id,
    String? assign_users,
    String? sourceValue,
    String? contact_person,
    String? company_name,
    String? phone_no, String?phone_no2, String? phone_no3,
    String? email, String? email2, String? email3,
    String? otherCountry, String? city, String? state, String? address,
    String? products_id,
    String? machine_description,
    int?purchase_lead_time,
    String? importanceValue,
    String? visit_card,
    int? sms_email,
    String? extension
  })async{
    try{
      final Map<String, dynamic> params = {'api_key': '$api_key',"user_id":user_id};
      var response = await dio.post(baseUrl+"/enquiry/add", queryParameters: params);
      print("AddEnquiry Response === ${response.data}");
      if(response.statusCode == 200){
        String message = response.data["message"];
        print("AddEnquiry message == $message");
        if(message == "Enquiry has been added successfully."){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen2(user_id: user_id,isLoad: true,)));
        }else{
          showError(context: context, text: "Enquiry has been not added!");
        }
      }else{
        print("AddEnquiry Response Data  ==> ${response.statusCode}=== ${response.statusMessage}");
      }

    }catch(e){
      print(" AddEnquiry error : $e");
    }
  }
}