import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  @override
  Future<dynamic> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers["Accept"] = "application/json";
    options.headers["Content-Type"] = "application/json";
    options.headers["Authorization"] = "Bearer 14|Je8m6PKTB24B1Wr9ICSLo5edZTkLF6iyy8e3F6BS";
    return handler.next(options);
  }

  @override
  Future<dynamic> onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }

  @override
  Future<dynamic> onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }
}
