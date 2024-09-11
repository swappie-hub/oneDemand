// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:ondemand/core/core.dart';
import 'package:ondemand/utils/logger.dart';
import 'package:http/http.dart' as http;
import 'package:cookie_jar/cookie_jar.dart';

class ApiClient {
  static const String TOP_HEADLINES = 'top-headlines';

  final Dio dio = Dio();

  ApiClient() {
    // dio.options.baseUrl = Environment.value.baseUrl!;
    dio.options.connectTimeout = const Duration(minutes: 10);
    dio.options.receiveTimeout = const Duration(minutes: 10);
    final cookieJar = CookieJar();

    dio.interceptors.add(CookieManager(cookieJar));

    // if (Environment.value.environmentType != EnvType.PRODUCTION) {
    //   dio.interceptors.add(
    //     PrettyDioLogger(
    //       requestHeader: true,
    //       requestBody: true,
    //       responseHeader: true,
    //       responseBody: false,
    //     ),
    //   );
    // }

    // data.headers['Cookie'] = "jwt=" + AppConstants.AUTH_TOKEN;
  }

  Future<Response> post(String path, dynamic data,
      {bool addCookies = false, bool sendCookies = false}) async {
    try {
      return await dio.post(path,
          data: data,
          options: sendCookies
              ? Options(headers: {
                  // "Cookie": AppConstants.cookies,
                  "Cookie": "token=" + AppConstants.token
                })
              : addCookies
                  ? Options(headers: {
                      // "Authorization": AppConstants.token.contains("Bearer")
                      //     ? AppConstants.token
                      //     : "Bearer ${AppConstants.token}"
                    })
                  : Options(headers: {
                      // "Cookie": AppConstants.cookies,
                      "Authorization": AppConstants.token
                    }));
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> put(String path, dynamic data,{bool addCookies = false, bool sendCookies = false}) async {
    try {
      return await dio.put(path,
          data: data,
          options: sendCookies
              ?  Options(headers: {  "Cookie": "token=" + AppConstants.token
                })
              : addCookies
                  ? Options(headers: {
                      // "Authorization": AppConstants.token.contains("Bearer")
                      //     ? AppConstants.token
                      //     : "Bearer ${AppConstants.token}"
                    })
                  : Options(headers: {
                      // "Cookie": AppConstants.cookies,
                      "Authorization": AppConstants.token
                    }));
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> delete(String path) async {
    try {
      return await dio.delete(path,
          options: AppConstants.token == ""
              ? Options(headers: {
                  // "Authorization": AppConstants.token.contains("Bearer")
                  //     ? AppConstants.token
                  //     : "Bearer ${AppConstants.token}"
                })
              : Options(headers: {
                  // "Cookie": AppConstants.cookies,
                  "Authorization": AppConstants.token
                }));
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response> get(String path, {bool sendCookies = false}) async {
    try {
      return await dio.get(path,
          options: sendCookies
              ? Options(headers: {
                  // "Cookie": AppConstants.cookies,
                  "Cookie": "token=" + AppConstants.token
                })
              : AppConstants.token == ""
                  ? Options(headers: {
                      // "Authorization": AppConstants.token.contains("Bearer")
                      //     ? AppConstants.token
                      //     : "Bearer ${AppConstants.token}"
                    })
                  : Options(headers: {
                      // "Cookie": AppConstants.cookies,
                      "Authorization": AppConstants.token
                    }));
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> patch(
      String path, dynamic data) async {
    try {
      return await dio.patch(path,
          data: data,
          options: AppConstants.token == ""
              ? Options(headers: {
                  // "Authorization": AppConstants.token.contains("Bearer")
                  //     ? AppConstants.token
                  //     : "Bearer ${AppConstants.token}"
                })
              : Options(headers: {
                  // "Cookie": AppConstants.cookies,
                  "Authorization": AppConstants.cookies
                }));
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response> getForVimeo(
    String path,
  ) async {
    try {
      return await dio.get(path,
          options: Options(headers: {
            // "Cookie": AppConstants.cookies,
            "Authorization": "Bearer 8cbbea3472c5fce4625f7d61ee437a86"
          }));
    } on DioException catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }
}

class MultiPartClient extends http.BaseClient {
  final http.Client _httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.persistentConnection = false;

    request.headers["Content-Type"] = "application/json";
    request.headers["Cookie"] = "token=" + AppConstants.token;

    print(request.headers.toString());

    print(request.url.toString());
    // Future<http.StreamedResponse> response = _httpClient.send(request);
    // alice.onHttpClientRequest(request.)
    // debugPrint(request.url.toString());
    // alice.onHttpResponse(await http.Response.fromStream(await response));
    return _httpClient.send(request);
  }
}
