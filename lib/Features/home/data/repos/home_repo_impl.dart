import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/core/erorrs/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks()async {
   try {
  var data=await apiService.get(url: 'volumes?Filtering=free-ebooks&q=subject:programming');
  List<BookModel> books=[];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);
}  catch (e) {
 if(e is DioException){
  return left(Serverfailure.FromDioException(e)) ;

 }
return left(Serverfailure(e.toString())) ;
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
     try {
  var data=await apiService.get(url: 'volumes?Filtering=free-ebooks&q=subject:programming');
  List<BookModel> books=[];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);
}  catch (e) {
 if(e is DioException){
  return left(Serverfailure.FromDioException(e)) ;

 }
return left(Serverfailure(e.toString())) ;
}
  }
}