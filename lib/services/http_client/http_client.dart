import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:harry_potter/app/config.dart';
import 'package:harry_potter/models/models.dart';

@singleton
class HttpClient {
  late final Dio _dio;

  HttpClient() {
    _dio = Dio(BaseOptions(
      baseUrl: AppConfig.appApiUrl,
    ));
  }

  Future<Response<T>> get<T>(
    String url, {
    JsonMap? queryParameters,
    Options? options,
  }) {
    return _dio.get<T>(
      url,
      queryParameters: queryParameters,
      options: options,
    );
  }
}
