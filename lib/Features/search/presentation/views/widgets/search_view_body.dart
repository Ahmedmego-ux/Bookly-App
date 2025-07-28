import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booklyapp/Features/search/data/searchcubit/search_cubit.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/custome_search_text_field.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:booklyapp/core/utils/style.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomSearchTextField(
                onSearch: (searchText) {
                  BlocProvider.of<SearchCubit>(context)
                      .fetchresultBooks(categories: searchText);
                },
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('result', style: Style.textstyle20),
            ),
            const SizedBox(height: 16),
             const Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}

