import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gd_store/core/api/api_exception.dart';
import 'package:gd_store/core/api/http/http_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// dio api client provider
final dioHttpApiProvider = Provider<IHttpApi>((ref) {
  return DioHttpApi(ref);
});

class DioHttpApi implements IHttpApi {
  final Ref ref;

  final Dio _dio;

  static String baseUrl = 'https://dummyjson.com';

  DioHttpApi(this.ref) : _dio = Dio() {
    final baseOptions = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      contentType: 'application/json',
      validateStatus: _validateStatus,
    );

    // set the options
    _dio.options = baseOptions;

    final presetHeaders = <String, String>{
      Headers.acceptHeader: '*/*',
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    _dio.options.headers = presetHeaders;

    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          error: false,
        ),
      );
    }
  }

  @override
  Future<Response> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(
        uri,
        queryParameters: queryParameters,
      );

      return response;
    } catch (e) {
      throw ApiException.getException(e);
    }
  }

  /// validate the status of a request
  bool _validateStatus(int? status) {
    return status! == 200 || status == 201;
  }
}

extension ResponseExtension on Response {
  bool get isSuccess {
    final is200 = statusCode == HttpStatus.ok;
    final is201 = statusCode == HttpStatus.created;
    return is200 || is201;
  }
}
