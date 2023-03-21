import 'package:bookly/core/utils/service_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/presentation/views/book_detail_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../constants.dart';
import '../models/book_model.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeViewRoute = '/homeView';
  static const kBookDetailsViewRoute = '/bookDetailsView';
  static const kSearchViewRoute = '/SearchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeViewRoute,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kSearchViewRoute,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
        path: kBookDetailsViewRoute,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => SimilarBooksCubit((homeRepoLocli)),
              child: BookDetailView(
                book: state.extra as Book,
              ),
            ),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          );
        }),
  ]);
}

/*GoRoute(
  path: '/page2',
  pageBuilder: (_, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: Page2(),
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
    );
  },
// */