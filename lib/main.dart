import 'package:booklyapp/Features/home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/Features/home/presintation/manger/bestsrllerbooks/best_seller_books_cubit.dart';
import 'package:booklyapp/Features/home/presintation/manger/featuredbookscubit/featured_books_cubit.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => BestSellerBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: Container(),
    );
  }
}
