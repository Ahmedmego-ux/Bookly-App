part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksloading extends FeaturedBooksState {}
final class FeaturedBooksfailure extends FeaturedBooksState {
  final String errmessage;

const  FeaturedBooksfailure(this.errmessage);
}
final class FeaturedBookssuccess extends FeaturedBooksState {
 final  List<BookModel> books;
 const FeaturedBookssuccess(this.books);
}
