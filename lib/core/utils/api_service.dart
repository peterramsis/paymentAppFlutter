import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> post({
    required String url,
    required dynamic data,
    required String token,
    Map<String, String>? headers,
    required String contentType,
  }) async {
    return await dio.post(url,
        data: data,
        options: Options(
            contentType: contentType,
            headers: headers ?? {'Authorization': "Bearer $token"}));
  }
}
