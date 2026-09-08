import 'package:bookly/core/utils/consts.dart';
import 'package:bookly/features/home/presentation/views/screens/book_details_screen.dart';
import 'package:bookly/features/home/presentation/views/screens/home_screen.dart';
import 'package:bookly/features/splash/presentation/views/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashPath,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: kHomePath,
      builder: ((context, state) => const HomeScreen()),
    ),
    GoRoute(
      path: kDetailsPath,
      builder: ((context, state) => const BookDetailsScreen()),
    ),
  ]);
}
