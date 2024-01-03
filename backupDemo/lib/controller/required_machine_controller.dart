import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../constant/api_string.dart';
import '../model/required_machine_model.dart';

class RequiredMachineController extends GetxController{

  Dio dio = Dio();
  RxList<RequiredMachineModel> requiredMachineListData = <RequiredMachineModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    GetEnquirySource();
  }

  Future<void>GetEnquirySource()async{
    try{
      final Map<String, dynamic> params = {'api_key': '$api_key',};
      var response = await dio.post(baseUrl+"/enquiry/get_enquiry_product", queryParameters: params);
      print("RequiredMachine Response === ${response.data}");
      if(response.statusCode == 200){
        for(var i in response.data['result']){
          requiredMachineListData.add(RequiredMachineModel.fromJson(i));
        }
      }else{
        print("RequiredMachine Response Data  ==> ${response.statusCode}=== ${response.statusMessage}");
      }

    }catch(e){
      print(" RequiredMachine error : $e");
    }
  }
}