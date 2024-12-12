import 'package:bwabat/core/helpers/constants.dart';
import 'package:bwabat/core/helpers/shared_pref_helper.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio(BaseOptions(
          // connectTimeout: 3,
          // receiveTimeout: 3,

          // baseUrl: 'https://apitest.truckella.com/api/', followRedirects: true
          // baseUrl: 'http://144.126.155.112:8090/api/',
          // validateStatus: (statusCode) {
          //   if (statusCode == null) {
          //     return false;
          //   }
          //   if (statusCode == 422) {
          //     // your http status code
          //     return true;
          //   } else if (statusCode == 403 || statusCode == 401) {
          //     // print('object: 401');

          //     return false;
          //   } else {
          //     return statusCode >= 200 && statusCode < 300;
          //   }
          // },
          followRedirects: true));
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      // dio?.interceptors.add();

      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}',
          // 'Bearer ',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.addAll([
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
      ),
    ]);
  }
}
