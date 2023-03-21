import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());

  final HomeRepo homeRepo;

  Future<void> bestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchBestsellerBooks();
    result.fold((failure) => emit(BestSellerBooksFailure(failure.errMessage)),
        (bestSellerBooks) => emit(BestSellerBooksDone(bestSellerBooks)));
  }
}
