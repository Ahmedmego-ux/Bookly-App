import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';

import 'package:equatable/equatable.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());
  final HomeRepo homeRepo;
  Future<void>fetchBestSellerBooks()async{
    emit(BestSellerBooksloading());
   var result=await homeRepo.fetchBestSellerBooks();
   result.fold((Failure){
     print('❌ Error: $Failure.errmessage}');
    emit(BestSellerBooksfailure(Failure.errmessage));
   },(books){
     print('✅ Fetched ${books.length} books');
      for (var book in books) {
        print('📚 Book Title: ${book.volumeInfo?.title}');}
    emit(BestSellerBookssuccess(books));
   });
   
  }
}
