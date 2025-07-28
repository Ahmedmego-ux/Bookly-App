part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}
final class Searchloading extends SearchState {}
final class Searchsuccess extends SearchState {
  final List books;

 const Searchsuccess(this.books);
}
final class Searchfailur extends SearchState {
  final String errmessage;

 const Searchfailur(this.errmessage);

  
}
