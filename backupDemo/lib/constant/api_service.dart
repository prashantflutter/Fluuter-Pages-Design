
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiService {
  Dio dio = Dio();
  Future<Response?> apiService(Map<String,dynamic> data,String api) async {
    try {
      debugPrint('$data');
      return await dio.post(api,
        data: FormData.fromMap(data),
      );
    } on DioException catch (e) {
      return e.response;
    }
  }

}

