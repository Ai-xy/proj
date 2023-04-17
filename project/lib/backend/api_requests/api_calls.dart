import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Voice Game Group Code

class VoiceGameGroup {
  static String baseUrl = 'http://8.134.216.253:8000';
  static Map<String, String> headers = {
    'appId': '97364422',
    'language': 'en_us',
  };
  static EmailCreateAccountCall emailCreateAccountCall =
  EmailCreateAccountCall();
  static FindRoomListByTagCall findRoomListByTagCall = FindRoomListByTagCall();
  static SaveUserInfoCall saveUserInfoCall = SaveUserInfoCall();
  static CreateRoomCall createRoomCall = CreateRoomCall();
  static RichTextMenuListCall richTextMenuListCall = RichTextMenuListCall();
  static RichTextreleaseCall richTextreleaseCall = RichTextreleaseCall();
  static RichTextlistCall richTextlistCall = RichTextlistCall();
  static RichTextdetailCall richTextdetailCall = RichTextdetailCall();
  static CommentListCall commentListCall = CommentListCall();
  static CommentRichTextCall commentRichTextCall = CommentRichTextCall();
  static RichTextdelCommentCall richTextdelCommentCall =
  RichTextdelCommentCall();
}

class EmailCreateAccountCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? token = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Email Create account',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/login/email',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FindRoomListByTagCall {
  Future<ApiCallResponse> call({
    String? token = 'BB9095149CE64CAE89D0525D89F18881',
    int? page = 0,
    int? size = 10,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'findRoomListByTag',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/voicechat/room/findRoomListByTag',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic allResult(dynamic response) => getJsonField(
    response,
    r'''$.result''',
    true,
  );
  dynamic allroomName(dynamic response) => getJsonField(
    response,
    r'''$.result[:].roomName''',
    true,
  );
  dynamic allcoverlmg(dynamic response) => getJsonField(
    response,
    r'''$.result[:].coverImg''',
    true,
  );
  dynamic allcharisma(dynamic response) => getJsonField(
    response,
    r'''$.result[:].charisma''',
    true,
  );
  dynamic allhomeownerCountryld(dynamic response) => getJsonField(
    response,
    r'''$.result[:].homeownerCountryId''',
    true,
  );
  dynamic allroomLabe(dynamic response) => getJsonField(
    response,
    r'''$.result[:].roomLabel''',
    true,
  );
}

class SaveUserInfoCall {
  Future<ApiCallResponse> call({
    String? birthday = '20001212',
    String? countryId = 'America',
    String? gender = '1',
    String? icon =
    'data:image/jpeg;base64,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',
    String? nickname = 'Joe',
    String? signature = 'bad girl',
    String? token = '12312312312',
    String? deviceNo = '',
  }) {
    final body = '''
{
  "birthday": "${birthday}",
  "countryId": "${countryId}",
  "deviceNo": "",
  "deviceType": "",
  "gender": "${gender}",
  "icon": "${icon}",
  "inviteCode": "",
  "nickname": "${nickname}",
  "osType": "",
  "signature": "${signature}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'saveUserInfo',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/user/saveUserInfo?${token}',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateRoomCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? coverImg = '',
    String? password = '',
    String? roomName = '',
    String? roomSynopsis = '',
    String? tagId = '0',
  }) {
    final body = '''
{
  "coverImg": "${coverImg}",
  "password": "${password}",
  "roomName": "${roomName}",
  "roomSynopsis": "${roomSynopsis}",
  "tagId": "${tagId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createRoom',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/voicechat/room/createRoom',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RichTextMenuListCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? page = 0,
    int? size = 10,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'richTextMenuList',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/expand/richText/richTextMenuList',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RichTextreleaseCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? coverImgUrl =
    'https://img2.baidu.com/it/u=2421090168,324781765&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1681232400&t=de72623ec2e79e78f677028ab4d58b37',
    int? menuId = 0,
    String? richTextContent = '',
    String? richTextSubTitle = '',
    String? richTextTitle = '',
  }) {
    final body = '''
{
  "coverImgUrl": "${coverImgUrl}",
  "menuId": ${menuId},
  "richTextContent": "${richTextContent}",
  "richTextSubTitle": "${richTextSubTitle}",
  "richTextTitle": "${richTextTitle}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'richTextrelease',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/expand/richText/release',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RichTextlistCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? currentPage = 0,
    String? endTime = '',
    String? keyword = '',
    int? menuId = 0,
    int? pageSize = 0,
    String? startTime = '',
  }) {
    final body = '''
{
  "currentPage": ${currentPage},
  "endTime": "${endTime}",
  "keyword": "${keyword}",
  "menuId": ${menuId},
  "pageSize": ${pageSize},
  "startTime": "${startTime}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'richTextlist',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/expand/richText/list',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RichTextdetailCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? searchValue = '',
  }) {
    final body = '''
{
  "searchValue": "${searchValue}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'richTextdetail',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/expand/richText/detail',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CommentListCall {
  Future<ApiCallResponse> call({
    int? currentPage = 0,
    String? token = '',
    String? endTime = '',
    String? keyword = '',
    int? pageSize = 10,
    String? startTime = '',
  }) {
    final body = '''
{
  "currentPage": ${currentPage},
  "endTime": "${endTime}",
  "keyword": "${keyword}",
  "pageSize": ${pageSize},
  "startTime": "${startTime}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'commentList',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/expand/richText/commentList',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CommentRichTextCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? commentContent = '',
    int? richTextId = 0,
  }) {
    final body = '''
{
  "commentContent": "${commentContent}",
  "richTextId": ${richTextId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'commentRichText',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/expand/richText/commentRichText',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RichTextdelCommentCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? searchValue = '',
  }) {
    final body = '''
{
  "searchValue": "${searchValue}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'richTextdelComment',
      apiUrl: '${VoiceGameGroup.baseUrl}/api/expand/richText/delComment',
      callType: ApiCallType.POST,
      headers: {
        ...VoiceGameGroup.headers,
        'loginToken': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Voice Game Group Code

class CreateAccountCall {
  static Future<ApiCallResponse> call({
    String? deviceId = '',
    String? token = '',
  }) {
    final body = '''
{
  "deviceId": "${deviceId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create account',
      apiUrl: 'http://8.134.216.253:8000/api/login/quickLogin',
      callType: ApiCallType.POST,
      headers: {
        'appId': '97364422',
        'language': 'en_us',
        'loginToken': 'Bearer${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EmailLoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? token = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EmailLogin',
      apiUrl: 'http://8.134.216.253:8000/api/login/email',
      callType: ApiCallType.POST,
      headers: {
        'appId': '97364422',
        'language': 'en_us',
        'loginToken': 'Bearer${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
    response,
    r'''$.result.token''',
  );
}

class GetUserInfoCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserInfo',
      apiUrl: 'http://8.134.216.253:8000/api/user/getUserInfo',
      callType: ApiCallType.POST,
      headers: {
        'appId': '97364422',
        'language': 'en_us',
        'loginToken': '${token}',
      },
      params: {},
      bodyType: BodyType.NONE,
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
