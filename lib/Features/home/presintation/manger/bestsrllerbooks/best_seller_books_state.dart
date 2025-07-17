part of 'best_seller_books_cubit.dart';

sealed class BestSellerBooksState extends Equatable {
  const BestSellerBooksState();

  @override
  List<Object> get props => [];
}

final class BestSellerBooksInitial extends BestSellerBooksState {}
final class BestSellerBooksloading extends BestSellerBooksState {}
final class BestSellerBooksfailure extends BestSellerBooksState {
  final String errmessage;

 const BestSellerBooksfailure(this.errmessage);
}
final class BestSellerBookssuccess extends BestSellerBooksState {
  final List<BookModel> books;

 const BestSellerBookssuccess(this.books);
}
