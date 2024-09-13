import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' as getLib;
import 'package:get_storage/get_storage.dart';
import 'package:http_parser/http_parser.dart';
import 'package:medical_u/Screens/splash/splash_page.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';

import '../value/globals.dart';

class AppHttpService {
  AppHttpService._();


  static Future<void> logout() async {
    var isLogin = await GetStorage().read(PreferenceKey.isLoggedIn) ?? false;

    clearStorage();
    AppGlobals.token='';
    if(isLogin) {
      getLib.Get.offAll(const SplashScreen());
    }
    showToast('Error 401',isError: true,isLong: true);
  }

  static refreshCode(String path,
      {required Map<String, dynamic> parameters}) async {
    GetStorage box = GetStorage();
    final response = await getRefresh('${BaseApi.baseAddressSlash}refresh',
        parameters: {'token': AppGlobals.token});
    if (response.statusCode! < 201) {
      String value = response.data['data']['token'];
      AppGlobals.token = value;
      await box.write('TokenKey', value);
      final response2 = await get(path, parameters: parameters);
      return response2;
    }
    //else
    else if (response.statusCode! == 401) {

      logout();

      // Get.offAll(const NewLogin());

    }
  }

  static Future<Response> getRefresh(
    String path, {
    required Map<String, dynamic> parameters,
  }) async {
    final options = Options(validateStatus: (_) => true);
    //  AppGlobals.token =
    //      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2F1dGguc2VydmljZXMuY2FzdGFsay5keW5lZW1hZGV2LmNvbS9lbWFpbC9hdXRoZW50aWNhdGUtdXNlciIsImlhdCI6MTY2NTQ3NDUyNywiZXhwIjoxNjY3NjM0NTI3LCJuYmYiOjE2NjU0NzQ1MjcsImp0aSI6Imdnd2RHdUE5OHJEYnNjWlQiLCJzdWIiOiJmZDY5YzUyZS1hOTZkLTRjNjctYTI3Mi0wMTEzMGE0NTk2NWEiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.LIEUIQl9KOJM-SXjjQVDgtHiuqo1N0coh_0irHSwPm0';

    String token = AppGlobals.token;


    options.extra = {'refresh': true};
    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer $token',
      HttpHeaders.acceptHeader: 'application/json',
    };
    debugPrint('url_get_is: $path');
    debugPrint('token_is: ${AppGlobals.token}' ?? '');

    Dio api = Dio(BaseOptions(contentType: Headers.jsonContentType, responseType:ResponseType.json,validateStatus: (_)=>true),);
    //   api.interceptors.add(InterceptorsWrapper(onRequest: ));
    final response = await api.get(
      path,
      queryParameters: parameters ?? {},
      options: options,
    );

    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();

    }

    return response;
  }

  static Future<Response> get(
    String path, {
    bool isExtra = false,
    required Map<String, dynamic> parameters,
  }) async {
    final options = Options(headers: {"Content-Type": "application/json"},contentType: Headers.jsonContentType, responseType:ResponseType.json,validateStatus: (_)=>true);


    //  AppGlobals.token =

    //      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2F1dGguc2VydmljZXMuY2FzdGFsay5keW5lZW1hZGV2LmNvbS9lbWFpbC9hdXRoZW50aWNhdGUtdXNlciIsImlhdCI6MTY2NTQ3NDUyNywiZXhwIjoxNjY3NjM0NTI3LCJuYmYiOjE2NjU0NzQ1MjcsImp0aSI6Imdnd2RHdUE5OHJEYnNjWlQiLCJzdWIiOiJmZDY5YzUyZS1hOTZkLTRjNjctYTI3Mi0wMTEzMGE0NTk2NWEiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.LIEUIQl9KOJM-SXjjQVDgtHiuqo1N0coh_0irHSwPm0';

    String token = isExtra ? 'hjjhjh' : AppGlobals.token;

    options.extra = {'refresh': true};
    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer $token',
      HttpHeaders.acceptHeader: 'application/json',
    };
    debugPrint('url_get_is: $path');
    debugPrint('token_is: ${AppGlobals.token}' ?? '');

    Dio api = Dio();
    // api.options.headers = {
    //   'Accept': 'application/json',
    //   'Content-Type': 'application/json',
    // };
    // api.options.validateStatus = (statusCode){
    //
    //     if(statusCode == null){
    //       return false;
    //     }
    //     if(statusCode == 422){ // your http status code
    //       return true;
    //     }else{
    //       return statusCode >= 200 && statusCode < 300;
    //     }
    //
    // };
    //
    // validateStatus: (statusCode){
    //   if(statusCode == null){
    //     return false;
    //   }
    //   if(statusCode == 422){ // your http status code
    //     return true;
    //   }else{
    //     return statusCode >= 200 && statusCode < 300;
    //   }
    // }

    //   api.interceptors.add(InterceptorsWrapper(onRequest: ));
    final response = await api.get(
      path,
      queryParameters: parameters ?? {},
      options: options,
    );

    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();
    }
    return response;
  }

  static Future<Response> post(String path,
      {required Map<String, dynamic> data}) async {
    final options = Options(headers: {"Content-Type": "application/json"},contentType: Headers.jsonContentType, responseType:ResponseType.json,validateStatus: (_)=>true);


    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer ${AppGlobals.token}',
        HttpHeaders.acceptHeader: 'application/json',
    };

    debugPrint('url_post_is: $path');


    final response = await Dio().post(
      path,
      data: data ?? {},
      options: options,
    );

    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();

      //  refreshCode();
    }

    debugPrint(response.data.toString());

    return response;
  }



  static Future<Response> postFormData(String path,
       File file) async {
    final options = Options(validateStatus: (_)=>true);

    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "image":
      await MultipartFile.fromFile(file.path, filename:fileName,
        contentType:  MediaType("image", "jpeg"),),
    });

    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer ${AppGlobals.token}',
    };


    final response = await Dio().post(
      path,
      data: formData ,
      options: options,
    );

    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();

      //  refreshCode();
    }

    return response;
  }

  static Future<Response> postJson(String path, String data) async {
    final options = Options(headers: {"Content-Type": "application/json"},contentType: Headers.jsonContentType, responseType:ResponseType.json,validateStatus: (_)=>true);

    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer ${AppGlobals.token}',
      HttpHeaders.acceptHeader: 'application/json',
    };


    final response = await Dio().post(
      path,
      data: data ?? {},
      options: options,
    );
    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();

      //   refreshCode();
    }
    return response;
  }

  static Future<Response> patchJson(String path, String data) async {
    final options = Options();

    String token = AppGlobals.token;
    if (kDebugMode) {
      print('token_is: $token');
    }

    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer ${AppGlobals.token}',
      HttpHeaders.acceptHeader: 'application/json',
    };

    final response = await Dio().patch(
      path,
      data: data ?? {},
      options: options,
    );
    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();

      //   refreshCode();
    }
    return response;

  }

  static Future<Response> put(String path, {dynamic data,bool content =false}) async {
    final options = Options(validateStatus: (_)=>true);

    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer ${AppGlobals.token}',
      HttpHeaders.acceptHeader: 'application/json',
      if (content)
        HttpHeaders.contentTypeHeader:"multipart/form-data",

    };

    final response = await Dio().put(

      path,
      data: data ?? {},
      options: options,
    );

    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();


      // refreshCode();
    }

    return response;
  }

  static Future<Response> postFile(String path, {formData}) async {
    final options = Options();

    options.headers = {
      HttpHeaders.authorizationHeader: 'Bearer ${AppGlobals.token}',
      HttpHeaders.acceptHeader: 'application/json',
      // HttpHeaders.contentTypeHeader: 'application/json',
      // 'Media Type': 'application/json',
    };

    //debugPrint('path_postFile2: $path  ${formData.toString()}');

    final response = await Dio().post(
      path,
      data: formData ?? {},
      options: options,
    );

    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();

      //    refreshCode();
    }

    return response;
  }

  static Future<Response> delete(String path, {dynamic data}) async {
    final options = Options();

    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer ${AppGlobals.token}',
      HttpHeaders.acceptHeader: 'application/json',
    };

    final response = await Dio().delete(
      path,
      data: data ?? {},
      options: options,
    );

    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();
      //     refreshCode();
    }

    return response;
  }

  static Future<Response> patch(String path, {dynamic data}) async {
    final options = Options(validateStatus: (_)=>true);

    options.headers = {
      if (AppGlobals.token != '')
        HttpHeaders.authorizationHeader: 'Bearer ${AppGlobals.token}',
      HttpHeaders.acceptHeader: 'application/json',
    };

    final response = await Dio().patch(
      path,
      data: data ?? {},
      options: options,
    );

    if (response.statusCode == 401) {
      // GetStorage().erase();
      logout();
      // refreshCode();
    }
    return response;
  }
}
