part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchFailure extends SearchState {
  final String errMessage;

  SearchFailure(this.errMessage);
}

class SearchDone extends SearchState {
  final List<Book> searchBooks;

  SearchDone(this.searchBooks);
}
