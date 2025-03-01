import 'package:dio/dio.dart';
import 'package:harry_potter/core/constant/apis.dart';

class ApiService {
  final Dio dio = Dio(BaseOptions(
    baseUrl: Apis.kBaseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  ));

  Future<List<dynamic>> get({required String endPoint}) async {
    var response = await dio.get(endPoint);
        return response.data;
  }
}
