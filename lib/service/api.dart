import 'package:dio/dio.dart';
import 'dart:async';

import './url.dart';

Future getHomePageContent() async {
  try {
    Dio dio = new Dio();
    dio.options.contentType = Headers.formUrlEncodedContentType;
    
    var formData = {
      'lon': '115.02932',
      'lat': '35.76189'
    };
    print('🦠  ---请求接口---  ${servicePath['homePageContent']}');
    Response response = await dio.post(servicePath['homePageContent']);
    if(response.statusCode == 200) {
      print('🧬  ---接口返回---  ${response.data}');
      return response.data;
    } else {
      throw Exception('接口异常，状态码为${response.statusCode}');
    }
  } catch (e) {
    return print('🦋  ---请求失败---  ${e}');
  }
}