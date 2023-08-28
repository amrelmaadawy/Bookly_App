import 'package:bookly_app/Features/home/persentaion/views/detailesView.dart';
import 'package:bookly_app/Features/home/persentaion/views/homeView.dart';
import 'package:bookly_app/Features/search/persientaion/views/searchView.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/persentaion/views/splashView.dart';

abstract class routs {
  static const khomeView = '/homeView';
  static const kDetailesView = '/DetailesView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const splashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const homeView(),
      ),
      GoRoute(
        path: kDetailesView,
        builder: (context, state) => const detailesView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const searchView(),
      ),
    ],
  );
}
