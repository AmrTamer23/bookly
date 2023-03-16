import 'package:bookly/features/home/presentation/views/book_detail_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeViewRoute = '/homeView';
  static const kBookDetailsViewRoute = '/homeView/bookDetailsView';
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
      path: kBookDetailsViewRoute,
      builder: (context, state) => const BookDetailView(),
    ),
  ]);
}
