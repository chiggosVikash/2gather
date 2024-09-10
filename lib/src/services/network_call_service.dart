
import 'package:dio/dio.dart';

sealed class NetworkCallServiceI{
  Future<String> get({required String url});
  Future<String> post(String url, Map<String, dynamic> body);
  Future<String> put(String url, Map<String, dynamic> body);
  Future<String> delete({required String url});
}

class NetworkCallService implements NetworkCallServiceI{
  final Dio _dio = Dio();
  
  final _options = Options(
    headers: {
      'Content-Type': 'application/json',
    },

  );
  @override
  Future<String> delete({required String url}) async{
    final response = await _dio.delete(url, options: _options);
    return response.data;
  }

  @override
  Future<String> get({required String url}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<String> post(String url, Map<String, dynamic> body) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<String> put(String url, Map<String, dynamic> body) {
    // TODO: implement put
    throw UnimplementedError();
  }
}

