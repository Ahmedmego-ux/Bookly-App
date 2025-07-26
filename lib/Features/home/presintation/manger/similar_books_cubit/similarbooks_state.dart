part of 'similarbooks_cubit.dart';

sealed class SimilarbooksState extends Equatable {
  const SimilarbooksState();

  @override
  List<Object> get props => [];
}

final class SimilarbooksInitial extends SimilarbooksState {}
final class Similarbooksloading extends SimilarbooksState {}
final class Similarbooksfailure extends SimilarbooksState {
  final String errmessage;

 const Similarbooksfailure(this.errmessage);
}
final class Similarbookssucess extends SimilarbooksState {
  final List<BookModel> books;

 const Similarbookssucess(this.books);
}
