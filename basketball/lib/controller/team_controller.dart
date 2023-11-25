import 'dart:convert';
import 'dart:ffi';

import 'package:basketball/api_service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../model_class/team_model.dart';


class TeamController extends GetxController{

  bool isLoading = false;
  Dio dio = Dio();
  List<Data> dataList = [];

  @override
  void onInit() {
    super.onInit();
    getAllTeamData();
  }

  startLoading(){
    isLoading = true;
    update();
  }

  stopLoading(){
    isLoading = false;
    update();
  }


 Future<void>getAllTeamData()async {
   try {
     startLoading();
     var response = await dio.get(APIService.baseUrl, options: Options(headers: {
         'X-RapidAPI-Key':'2QMXSehDLSmshDmRQcKUIAiQjIZAp1UvKUrjsnewgqSP6F5oBX',
         'X-RapidAPI-Host': 'free-nba.p.rapidapi.com'
       }),);
     TeamModel teamModel = TeamModel.fromJson(response.data);
     print(response.data);
     if(response.statusCode == 200){
       stopLoading();
       dataList.addAll((teamModel.data)!.map((e) => Data.fromJson(e.toJson())).toList());
       update();
     }else{
       print("statusCode == > ${response.statusCode}");
     }

   }catch(e){
     print(e);
   }

 }
}