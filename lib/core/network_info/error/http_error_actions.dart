import 'package:dio/dio.dart';
import 'exceptions.dart';

extension OnDioError on DioException {
  void action(DioException e) {}
}

class OnDioErrorActions {
  OnDioErrorActions({required DioException exception, required StackTrace stackTrace}) {
    HttpErrorActions(exception: exception, stackTrace: stackTrace);
  }
}

class HttpErrorActions {
  HttpErrorActions({required DioException exception, required StackTrace stackTrace}) {
    throw ServerException(
      message: exception.message,
      exception: exception,
      fieldErrors: null,
      nonFieldError: exception.error.toString(),
      uiVisible: false,
    );
  }
}
