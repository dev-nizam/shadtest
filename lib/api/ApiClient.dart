import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testapp/api/ApiException.dart';



class ApiClient {
  static const String basePath = "http://185.188.127.100/WaselleApi/api/";
  Future<Response> invokeApi(
      {required String path,
      required String method,
      required Object? body}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString('token'));
    Map<String, String> headerparams = {};
    if (method == "POST" ||
        method == "GET" ||
        method == "DELETE" ||
        method == "PATCH") {
      headerparams = {
        'Authorization': 'Bearer ${prefs.getString('token')}',
        'Content-Type': 'application/json'
      };
    }

    Response response;

    String url = basePath + path;
    print(url);

    final nullableHeaderParams = (headerparams.isEmpty) ? null : headerparams;

    switch (method) {
      case "POST":
        response =
            await post(Uri.parse(url), headers: headerparams, body: body);
        break;
      case "PUT":
        response = await put(Uri.parse(url),
            headers: {
              'content-Type': 'application/json',
            },
            body: body);
        break;
      case "DELETE":
        response = await delete(Uri.parse(url),
            headers: nullableHeaderParams, body: body);
        break;
      case "POST_":
        response = await post(
          Uri.parse(url),
          headers: {},
          body: body,
        );
        break;
      case "GET_":
        response = await post(
          Uri.parse(url),
          headers: {},
          body: body,
        );
        break;
      default:
        response = await get(Uri.parse(url), headers: headerparams);
    }
    print('status of $path =>' + (response.statusCode).toString());
    print(response.body);
    if (response.statusCode >= 400) {
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);

      throw ApiException(
          message: _decodeBodyBytes(response), statusCode: response.statusCode);
    }
    return response;
  }

  String _decodeBodyBytes(Response response) {
    var contentType = response.headers["content-type"];
    if (contentType != null && contentType.contains("application/json")) {
      return jsonDecode(response.body)['message'];
    } else {
      return response.body;
    }
  }
}
