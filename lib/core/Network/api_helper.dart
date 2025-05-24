import 'api_paths.dart';
import 'package:dio/dio.dart';

class ApiHelper {
  static final ApiHelper _instance = ApiHelper._init();
  factory ApiHelper() => _instance;

  ApiHelper._init();
  Dio dio = Dio(BaseOptions(
    baseUrl: EndPoints.baseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  ));

  Future<Response> postRequest(
      {required String endPoint,
      Map<String, dynamic>? data,
      bool isFormData = true}) async {
    return await dio.post(endPoint,
        data: isFormData ? FormData.fromMap(data ?? {}) : data);
  }
}
