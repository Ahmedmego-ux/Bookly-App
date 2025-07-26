import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/Features/home/presintation/manger/similar_books_cubit/similarbooks_cubit.dart';
import 'package:booklyapp/Features/home/presintation/view/book_details_view.dart';
import 'package:booklyapp/Features/home/presintation/view/home_view.dart';
import 'package:booklyapp/Features/search/presentation/views/search_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context,state )=> BlocProvider(
            create: (context) => SimilarbooksCubit(getIt.get<HomeRepoImpl>()),
            
        child:    BookDetailsView(bookModel: state.extra as BookModel,)))
        ,
      
      GoRoute(
        path: '/searchview',
        builder: (BuildContext context, GoRouterState state) {
          return SearchView();
        },
      ),
    ],
  );
}
