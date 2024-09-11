

import 'package:dio/dio.dart';

typedef NetworkCall = NetworkCallServiceI;

sealed class NetworkCallServiceI{
  Future<Response> get({required String url});
  Future<Response> post(String url, Map<String, dynamic> body);
  Future<Response> put(String url, Map<String, dynamic> body);
  Future<Response> delete({required String url});
}

class NetworkCallService implements NetworkCallServiceI{
  final Dio _dio = Dio();
  
  final _options = Options(
    headers: {
      'Content-Type': 'application/json',
    },

  );
  @override
  Future<Response> delete({required String url}) async{
    final response = await _dio.delete(url, options: _options);
    return response;
  }

  @override
  Future<Response> get({required String url}) async{
    final response = await _dio.get(url, options: _options);
    return response;
  }

  @override
  Future<Response> post(String url, Map<String, dynamic> body) async{
    final response = await _dio.post(url, data: body, options: _options);
    return response;
  }

  @override
  Future<Response> put(String url, Map<String, dynamic> body) async{
    final response = await _dio.put(url, data: body, options: _options);
    return response;
  }
}

