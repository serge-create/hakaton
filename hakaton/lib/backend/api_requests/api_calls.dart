import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CitySearchCall {
  static Future<ApiCallResponse> call({
    String? input = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'City Search',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
        'key': "AIzaSyA5H_dqJu9Qv8PyuMRLZStDOX7UvqYuJRE",
        'language': "ru",
        'components': "country:ru",
        'types': "locality",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
