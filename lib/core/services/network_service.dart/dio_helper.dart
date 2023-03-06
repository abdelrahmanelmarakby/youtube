// ignore_for_file: unnecessary_null_comparison, always_declare_return_types

import 'dart:developer';
import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';

import '../../global/const.dart';
import '../get_storage_helper.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: APIKeys.baseUrl,
        receiveDataWhenStatusError: true,
        validateStatus: (validateStatus) => true,
        headers: {
          "content-type": 'application/json; charset=utf-8',
        },
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
        responseType: ResponseType.json,
      ),
    );
  }

  static Future<Response?> getData({
    path,
    queryParameters,
  }) async {
    try {
      return await dio!.get(path,
          queryParameters: queryParameters,
          options: Options(
            validateStatus: (_) => true,
            headers: {
              'Authorization': 'Bearer ${CacheHelper.getUserToken}',
              'Accept': 'application/json',
              'lang': CacheHelper.getLocale,
            },
          ));
    } on SocketException catch (e) {
      log(e.message);
    } on DioError catch (e) {
      log(e.message!);
      String errorMsg = _handleResponse(e.response!);
      BotToast.showText(text: errorMsg);
    }
    return null;
  }

  static Future<Response?> postData({path, data}) async {
    try {
      log(data.toString());
      log(path.toString());
      return await dio!.post(path,
          data: data,
          options: Options(
            validateStatus: (_) => true,
            contentType: 'application/json',
            headers: {
              'Authorization': 'Bearer ${CacheHelper.getUserToken}',
              'Accept': 'application/json',
              'lang': CacheHelper.getLocale,
            },
            followRedirects: false,
          ));
    } on SocketException catch (e) {
      log(e.message);
    } on DioError catch (e) {
      log(e.message!);
      log(e.response.toString());
      log(e.response?.statusCode.toString() ?? "");
      String errorMsg = _handleResponse(e.response!);
      BotToast.showText(text: errorMsg);
    }
    return null;
  }

  static String _handleResponse(Response response) {
    if (response == null) {
      var jsonResponse = 'connection error';
      return jsonResponse;
    }
    switch (response.statusCode) {
      case 400:
        var jsonResponse = 'UnAuth';
        return jsonResponse;
      case 401:
        var jsonResponse = 'UnAuth';
        return jsonResponse;
      case 403:
        var jsonResponse = 'UnAuth';
        return jsonResponse;
      case 404:
        var jsonResponse = 'Not found';
        return jsonResponse;
      case 422:
        var jsonResponse = 'some fileds required! or error with entry data';
        return jsonResponse;
      case 500:
        var jsonResponse = 'server error';
        return jsonResponse;
      default:
        var jsonResponse = 'server error';
        return jsonResponse;
    }
  }
}
