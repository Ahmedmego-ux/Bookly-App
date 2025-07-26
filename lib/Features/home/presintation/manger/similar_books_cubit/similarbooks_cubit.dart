import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


part 'similarbooks_state.dart';

class SimilarbooksCubit extends Cubit<SimilarbooksState> {
  SimilarbooksCubit(this.homeRepo) : super(SimilarbooksInitial());
  final HomeRepo homeRepo;
  Future<void>fetchsimilarBooks({required String categories})async {
    emit(Similarbooksloading());
    var result=await homeRepo.fetchSimilarBooks(categories: categories);
   result.fold(
  (failure) {
    emit(Similarbooksfailure(failure.errmessage));
  },
  (books) {
    emit(Similarbookssucess(books));
  },
);
}
}
