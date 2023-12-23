import 'package:dio/dio.dart';

extension StringLocalization on DioError {
  String get shortErrorMessage => '${response?.statusCode} - ${response?.data['message'].toString()}';
}