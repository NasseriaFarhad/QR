import 'failures.dart';

class MessageFailure {
  static String message(Failure? failure) {
    if (failure?.props != null) {
      var json = failure?.props.first as Map<String, dynamic>;
      return json['message'];
    } else {
      return '';
    }
  }
}
