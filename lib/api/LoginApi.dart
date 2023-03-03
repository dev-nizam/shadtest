import 'dart:convert';

import 'package:http/http.dart';
import 'package:testapp/api/ApiClient.dart';
import 'package:testapp/model/LoginModel.dart';

class LoginApi {
  ApiClient apiClient = ApiClient();
  Future<List<LoginModel>> getLogin({required String username, required String password,
  }) async {
    print("login Api working");
    String basePath =
        "LoginDetails?UName=$username&Password=$password&UserType=Customer";

    Response response =
        await apiClient.invokeApi(path: basePath, method: "GET", body: null);
    print(response.body);
    return LoginModel.listFromJson(json.decode(response.body));
  }
}
