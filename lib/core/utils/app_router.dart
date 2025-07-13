import 'package:booklyapp/Features/home/presintation/view/book_details_view.dart';
import 'package:booklyapp/Features/home/presintation/view/home_view.dart';
import 'package:booklyapp/Features/search/presentation/views/search_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

 static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: '/homeview',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: '/bookdetails',
      builder: (BuildContext context, GoRouterState state) {
        return const BookDetailsView();
      },
    ),
     GoRoute(
      path: '/searchview',
      builder: (BuildContext context, GoRouterState state) {
        return  SearchView();
      },
    ),
  ],
);
}