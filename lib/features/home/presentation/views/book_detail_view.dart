import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/book_model.dart';
import 'widgets/book_detail_view_body.dart';
import 'package:go_router/go_router.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView({super.key, required this.book});
  final Book book;

  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .similarBooks(bookId: widget.book.id, bookName: widget.book.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailViewBody(
        book: widget.book,
      ),
    );
  }
}
