import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start auth Group Code

class AuthGroup {
  static String getBaseUrl({
    String? mobile = '',
  }) =>
      'https://ghadir-api.mardomi.org/api';
  static Map<String, String> headers = {};
  static OtpCall otpCall = OtpCall();
  static LoginCall loginCall = LoginCall();
}

class OtpCall {
  Future<ApiCallResponse> call({
    String? mobile = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl(
      mobile: mobile,
    );

    final ffApiRequestBody = '''
{
  "identifier": "$mobile"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'otp',
      apiUrl: '$baseUrl/auth/otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? password = '',
    String? mobile = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl(
      mobile: mobile,
    );

    final ffApiRequestBody = '''
{
  "identifier": "$mobile",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '$baseUrl/auth/local',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End auth Group Code

/// Start profile Group Code

class ProfileGroup {
  static String getBaseUrl({
    String? jwt = '',
  }) =>
      'https://ghadir-api.mardomi.org/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [jwt]',
  };
  static UpsertCall upsertCall = UpsertCall();
  static UpsertLocationCall upsertLocationCall = UpsertLocationCall();
  static UpsertLocalTimeCall upsertLocalTimeCall = UpsertLocalTimeCall();
  static GetCall getCall = GetCall();
  static UpsertDeliveryTypeCall upsertDeliveryTypeCall =
      UpsertDeliveryTypeCall();
}

class UpsertCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    dynamic userBitesJson,
    String? jwt = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      jwt: jwt,
    );

    final userBites = _serializeJson(userBitesJson, true);
    final ffApiRequestBody = '''
{
  "firstName": "$firstName",
  "lastName": "$lastName",
  "user_bites": $userBites
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsert',
      apiUrl: '$baseUrl/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertLocationCall {
  Future<ApiCallResponse> call({
    double? lat,
    double? long,
    String? locationAddress = '',
    String? address = '',
    double? province,
    String? jwt = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      jwt: jwt,
    );

    final ffApiRequestBody = '''
{
  "lat": $lat,
  "long": $long,
  "locationAddress": "$locationAddress",
  "address": "$address",
  "province": $province
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsertLocation',
      apiUrl: '$baseUrl/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertLocalTimeCall {
  Future<ApiCallResponse> call({
    int? localTime,
    String? jwt = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      jwt: jwt,
    );

    final ffApiRequestBody = '''
{
  "localTime": $localTime
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsertLocalTime',
      apiUrl: '$baseUrl/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get',
      apiUrl: '$baseUrl/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertDeliveryTypeCall {
  Future<ApiCallResponse> call({
    String? deliveryType = '',
    String? jwt = '',
  }) async {
    final baseUrl = ProfileGroup.getBaseUrl(
      jwt: jwt,
    );

    final ffApiRequestBody = '''
{
  "deliveryType": "$deliveryType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsertDeliveryType',
      apiUrl: '$baseUrl/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End profile Group Code

/// Start bite Group Code

class BiteGroup {
  static String getBaseUrl({
    String? jwt = '',
  }) =>
      'https://ghadir-api.mardomi.org/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [jwt]',
  };
  static ListCall listCall = ListCall();
}

class ListCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    final baseUrl = BiteGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'list',
      apiUrl: '$baseUrl/bites?sort=createdAt:desc',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'order': "createdAt:desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End bite Group Code

/// Start teamate Group Code

class TeamateGroup {
  static String getBaseUrl({
    String? jwt = '',
  }) =>
      'https://ghadir-api.mardomi.org/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [jwt]',
  };
  static UpsertTeammateCall upsertTeammateCall = UpsertTeammateCall();
}

class UpsertTeammateCall {
  Future<ApiCallResponse> call({
    dynamic dataJson,
    String? jwt = '',
  }) async {
    final baseUrl = TeamateGroup.getBaseUrl(
      jwt: jwt,
    );

    final data = _serializeJson(dataJson, true);
    final ffApiRequestBody = data;
    return ApiManager.instance.makeApiCall(
      callName: 'upsertTeammate',
      apiUrl: '$baseUrl/teammate/upsert',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End teamate Group Code

/// Start base Group Code

class BaseGroup {
  static String getBaseUrl() => 'https://ghadir-api.mardomi.org/api';
  static Map<String, String> headers = {};
  static ProvincesCall provincesCall = ProvincesCall();
  static GetConfigCall getConfigCall = GetConfigCall();
  static LocalsListCall localsListCall = LocalsListCall();
  static LocalTimesCall localTimesCall = LocalTimesCall();
  static LocalDateCall localDateCall = LocalDateCall();
}

class ProvincesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'provinces',
      apiUrl: '$baseUrl/provinces',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetConfigCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getConfig',
      apiUrl: '$baseUrl/config',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LocalsListCall {
  Future<ApiCallResponse> call({
    String? type = '',
  }) async {
    final baseUrl = BaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'localsList',
      apiUrl: '$baseUrl/locals',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filters[type]': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$["data"]''',
        true,
      ) as List?;
}

class LocalTimesCall {
  Future<ApiCallResponse> call({
    String? local = '',
    String? date = '',
  }) async {
    final baseUrl = BaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'localTimes',
      apiUrl: '$baseUrl/localTime/getTimes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'local': local,
        'date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LocalDateCall {
  Future<ApiCallResponse> call({
    String? local = '',
  }) async {
    final baseUrl = BaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'localDate',
      apiUrl: '$baseUrl/localTime/getDates',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'local': local,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End base Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
