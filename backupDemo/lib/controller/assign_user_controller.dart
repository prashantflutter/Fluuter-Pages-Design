import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../constant/api_string.dart';
import '../model/assign_user_model.dart';


class AssignUserController extends GetxController{

  Dio dio = Dio();
  RxList< AssignUserResult> resultListData = <AssignUserResult>[].obs;


  @override
  void onInit() {
    super.onInit();
    GetAssignUsers();
  }

  Future<void>GetAssignUsers()async{
    try{
      final Map<String, dynamic> params = {'api_key': '$api_key',};
      var response = await dio.post(baseUrl+"/users/get_all_user", queryParameters: params);
      print("AssignUser Response === ${response.data}");
      if(response.statusCode == 200){
        for(var i in response.data['result']){
          resultListData.add( AssignUserResult.fromJson(i));
        }
      }else{
        print("AssignUser Response Data  ==> ${response.statusCode}=== ${response.statusMessage}");
      }

    }catch(e){
      print(" AssignUser error : $e");
    }
  }


}