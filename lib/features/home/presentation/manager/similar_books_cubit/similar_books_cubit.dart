import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> similarBooks({required String bookName, required bookId}) async {
    emit(SimilarBooksLoading());
    var result =
        await homeRepo.fetchSimilarBooks(bookName: bookName, id: bookId);
    result.fold((failure) => emit(SimilarBooksFailure(failure.errMessage)),
        (featuredBooks) => emit(SimilarBooksDone(featuredBooks)));
  }
}
