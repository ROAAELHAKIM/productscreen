import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../Utils/constants.dart';
@lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? queryParam}) {
    return dio.get(Constants.BASEURL + endPoint, queryParameters: queryParam);
  }

  Future<Response> postData(
      {required String endPoint, Map<String, dynamic>? body}) {
    return dio.get(Constants.BASEURL + endPoint, data: body);
  }
}
