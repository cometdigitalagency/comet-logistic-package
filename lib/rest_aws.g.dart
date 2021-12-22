// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_aws.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestAWS implements RestAWS {
  _RestAWS(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> authUser(body, {required path, required token}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': 'application/json',
      r'Accept': 'application/json',
      r'Authorization': token
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json')
        .compose(_dio.options, '/createUser_dev',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
