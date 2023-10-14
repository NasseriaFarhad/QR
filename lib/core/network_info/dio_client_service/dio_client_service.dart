import 'package:dio/dio.dart';
import '../interceptor/interceptors.dart';

class DioClientService {
  late Dio client;
  DioClientService() {
    client = Dio(
      BaseOptions(
        baseUrl: "https://jsonplaceholder.typicode.com/",
        connectTimeout: const Duration(minutes: 1),
        receiveTimeout: const Duration(minutes: 1),
        sendTimeout: const Duration(minutes: 1),
      ),
    );
    client.interceptors.add(AppInterceptors());
  }

  Dio call() => client;
}
