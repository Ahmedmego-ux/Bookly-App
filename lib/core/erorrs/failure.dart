import 'package:dio/dio.dart';
abstract class Failure {
  final String errmessage;

  Failure(this.errmessage);
}
class Serverfailure extends Failure{
  Serverfailure(super.errmessage);
  factory Serverfailure.FromDioException (DioException dioexception) {
  switch(dioexception.type) {
    
    case DioExceptionType.connectionTimeout:
      return Serverfailure('connection Timeout ');
    case DioExceptionType.sendTimeout:
      return Serverfailure('send Timeout ');
    case DioExceptionType.receiveTimeout:
      return Serverfailure('recive Timeout ');
    case DioExceptionType.badCertificate:
      return Serverfailure('erorrr ');
    case DioExceptionType.badResponse:
      return Serverfailure.FromResponse(dioexception.response!.statusCode, dioexception.response!.data);
    case DioExceptionType.cancel:
      return Serverfailure('cancel');
    case DioExceptionType.connectionError:
       return Serverfailure('connection Error ');
    case DioExceptionType.unknown:
       if(dioexception.message!.contains('SocketException')){
        return Serverfailure('no inter net');
       }return Serverfailure('try again');
       default:
       return Serverfailure('oooppppsss try later');
       
       
       }

}


factory Serverfailure.FromResponse(int? stuscode,dynamic response){
  if(stuscode==400||stuscode==401||stuscode==403){
    return Serverfailure(response["error"]["message"]);
  }else if(stuscode ==404){
    return Serverfailure('your requist not found ');
  }else if(stuscode ==500){
    return Serverfailure('interial server error  ');

}return Serverfailure('oopsthere was an error ');
}}
