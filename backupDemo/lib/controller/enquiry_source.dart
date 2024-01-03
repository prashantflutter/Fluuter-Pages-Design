import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../constant/api_string.dart';
import '../model/enquiry_source_model.dart';

class EnquirySourceController extends GetxController{

  Dio dio = Dio();
  RxList<EnquiryResult> resultListData = <EnquiryResult>[].obs;
  @override
  void onInit() {
    super.onInit();
    GetEnquirySource();
  }

  Future<void>GetEnquirySource()async{
    try{
      final Map<String, dynamic> params = {'api_key': '$api_key',};
      var response = await dio.post(baseUrl+"/enquiry/get_enquiry_source", queryParameters: params);
      print("EnquirySource Response === ${response.data}");
      if(response.statusCode == 200){
        for(var i in response.data['result']){
          resultListData.add(EnquiryResult.fromJson(i));
        }
      }else{
        print("EnquirySource Response Data  ==> ${response.statusCode}=== ${response.statusMessage}");
      }

    }catch(e){
      print(" EnquirySource error : $e");
    }
  }
}