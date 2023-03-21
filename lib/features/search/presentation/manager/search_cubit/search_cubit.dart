import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model.dart';
import 'package:dartz/dartz.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;

  Future<void> search({required String clue}) async {
    emit(SearchLoading());
    var result = await searchRepo.search(clue: clue);
    result.fold(
      (failure) {
        emit(SearchFailure(failure.errMessage));
      },
      (books) {
        emit(SearchDone(books));
      },
    );
  }
}
