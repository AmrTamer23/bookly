import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/models/book_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchBestsellerBooks() async {
    try {
      var data = await apiService.get(endPoint: 'search/{Best Seller}');
      List<Book> books = [];
      for (var i in data['books']) {
        books.add(Book.fromJson(i));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: 'search/{New}');
      List<Book> books = [];
      for (var i in data['books']) {
        books.add(Book.fromJson(i));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchSimilarBooks(
      {required String bookName, required id}) async {
    try {
      var data = await apiService.get(endPoint: 'search/{$bookName}');
      List<Book> books = [];
      for (var i in data['books']) {
        if (Book.fromJson(i).id != id) {
          books.add(Book.fromJson(i));
        }
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
