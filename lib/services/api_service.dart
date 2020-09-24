import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import '../models/serializers.dart';
import 'package:flutter/foundation.dart';

// *************************************************************************
// If you use dio in flutter development,
// you'd better to decode json in background with [compute] function.
// Must be top-level function
_parseAndDecode(String response) {
  return jsonDecode(response);
}

parseJson(String text) {
  return compute(_parseAndDecode, text);
}
// *************************************************************************

class ApiService {
  static final String _stagingBaseUrl = "https://randomuser.me";

  String get baseUrl => _dio.options.baseUrl;
  set baseUrl(value) {
    _dio.options.baseUrl = value;
  }

  Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: _stagingBaseUrl,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    );

    //_dio.interceptors.add(tokenInterceptor);
    _dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));

    //Custom jsonDecodeCallback for flutter development ********************
    (_dio.transformer as DefaultTransformer).jsonDecodeCallback = parseJson;
  }

  Future<BuiltList<T>> getList<T>(
    String path, {
    //Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
    //Type errorType = ApiError,
  }) async {
    assert(T != dynamic);

    try {
      Response response = await _dio.get(
        path,
        //queryParameters: _filterQueryParameters(queryParameters),
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return _handleListResponse<T>(response);
    } catch (e, s) {
      throw Exception('Failed to load Response');
      //_handleError(e, s, errorType: errorType);
    }
  }

  // if response from server is [Iterable] then use this function:
  BuiltList<T> _handleListResponse<T>(Response response) {
    if (response.data == null) {
      return BuiltList<T>();
    }
    var rawList = (response.data as List<dynamic>);
    return BuiltList<T>(rawList.map((item) {
      if (T is String) {
        return item;
      } else {
        return serializers.deserializeWith<T>(
            serializers.serializerForType(T), item);
      }
    }).toList());
  }
}
