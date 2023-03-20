part of 'best_seller_books_cubit.dart';

@immutable
abstract class BestSellerBooksState {}

class BestSellerBooksInitial extends BestSellerBooksState {}

class BestSellerBooksLoading extends BestSellerBooksState {}

class BestSellerBooksFailure extends BestSellerBooksState {
  final String errMessage;

  BestSellerBooksFailure(this.errMessage);
}

class BestSellerBooksDone extends BestSellerBooksState {
  final List<Book> bestSellerBooks;

  BestSellerBooksDone(this.bestSellerBooks);
}
