import 'package:dio/dio.dart';

class ApiService {
  Dio? _dio;


  /*String? _baseUrl = 'https://www.postman.com/collections/';
  String apiKey1 = '3223d639447a8524e38f';
  String apiKey2 = '94db931dc503afd508a5';*/

  init(){
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.postman.com/',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type' : 'application/json',
        }
      )
    );
  }



   Future<Response<T>> getApi<T>(
     String? path,{
    Map<String , dynamic>? query
  }) async {
    Response<T> response = await _dio!.get(path!,queryParameters: query);

    return response;
  }
//*************************************
  Future<Response<T>> postApi<T>(
      String path, {
        required data,
        Map<String, dynamic>? queryParameters,
        Options? options,

      })async{
    Response<T> response = await _dio!.post(path,data: data,queryParameters : queryParameters);

    return response;
  }

}