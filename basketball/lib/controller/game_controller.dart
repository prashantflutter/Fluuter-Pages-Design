import 'dart:convert';
import 'dart:ffi';

import 'package:basketball/api_service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../model_class/game_score_model.dart';
import '../model_class/team_model.dart';


class GameController extends GetxController{

  bool isLoading = false;
  Dio dio = Dio();
  List<ScoreData> scoreListData = [];

  @override
  void onInit() {
    super.onInit();
    getScoreTeamData();
  }

  startLoading(){
    isLoading = true;
    update();
  }

  stopLoading(){
    isLoading = false;
    update();
  }


 Future<void>getScoreTeamData()async {
   try {
     startLoading();
     var response = await dio.get(APIService.game, options: Options(headers: {
         'X-RapidAPI-Key':'2QMXSehDLSmshDmRQcKUIAiQjIZAp1UvKUrjsnewgqSP6F5oBX',
         'X-RapidAPI-Host': 'free-nba.p.rapidapi.com'
       }),);
     ScoreModel teamModel = ScoreModel.fromJson(response.data);
     print(response.data);
     if(response.statusCode == 200){
       stopLoading();
       scoreListData.addAll((teamModel.data)!.map((e) => ScoreData.fromJson(e.toJson())).toList());
       update();
     }else{
       print("statusCode == > ${response.statusCode}");
     }

   }catch(e){
     print(e);
   }

 }
}