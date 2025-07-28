import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  final HomeRepo homeRepo;
  Future<void>fetchresultBooks({required String categories})async{
    emit(Searchloading());
   var result=await homeRepo.fetchSimilarBooks(categories: categories);
   result.fold((Failure){
     
    emit(Searchfailur(Failure.errmessage));
   },(books){
     
      
        
    emit(Searchsuccess(books));
   });}
}
