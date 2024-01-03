import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:siddhapura/constant/api_string.dart';
import 'package:siddhapura/model/recent_enquiries_model.dart';



class RecentEnquiriesController extends GetxController{


  Dio dio = Dio();

  RxList<Data> enquiriesDataList = <Data>[].obs;
  // List<Data> enquiriesDataList = <Data>[];


  // startLoading(){
  //   isLoading = true;
  //  update();
  // }
  //
  // stopLoading(){
  //   isLoading = false;
  //  update();
  // }


  Future<void>recentEnquiriesData(String user_id)async{
   try{

     print("user Id Get ====> $user_id");
     final Map<String, dynamic> params = {
       'api_key': '$api_key',
       "user_id": '$user_id',
     };
     print("Params Data === ${params}");
     var response = await dio.post(baseUrl+"/enquiry/get_data", queryParameters: params,);
     print("Response === ${response.data}");
     enquiriesDataList.clear();
     if(response.statusCode == 200){
       for(var i in response.data['data']){
         enquiriesDataList.add(Data.fromJson(i));
       }
       //RecentEnquiriesModel recentEnquiriesModel = RecentEnquiriesModel.fromJson(response.data);
      //enquiriesDataList.addAll((recentEnquiriesModel.data)!.map((e) => Data.fromJson(e.toJson())));

       print("enquiriesDataList : ${enquiriesDataList.length}");

     }else{
       print("Response Data  ==> ${response.statusCode}=== ${response.statusMessage}");
     }

   }catch(e){
     print("error : $e");
   }
  }


}