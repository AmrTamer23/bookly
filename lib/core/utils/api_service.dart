import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.dbooks.org/api/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
