import 'package:dio/dio.dart';

class ApiService {
  
  final _baseurl="https://www.googleapis.com/books/v1/";
 final Dio dio;
 ApiService( this.dio);
 Future<Map<String,dynamic>> get({required String url})async{

  var response=   await dio.get("$_baseurl$url");
  return response.data;
 }
}
