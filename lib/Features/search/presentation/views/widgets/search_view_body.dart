import 'package:booklyapp/Features/search/presentation/views/widgets/custome_search_text_field.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: customsearchtextfeild(),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'result',
            style: Style.textstyle20,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Expanded(child: searchresultlistview())
      ],
    )));
  }
}
