import 'api_paths.dart';
import 'package:dio/dio.dart';

class ApiHelper {
  Dio dio = Dio(BaseOptions(
    baseUrl: ApiPaths.baseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  ));

  potRequest({required String endPoint, Map<String, dynamic>? data}) {
    dio.post(
      endPoint,
      data: FormData.fromMap(data ?? {}),
    );
  }
}
