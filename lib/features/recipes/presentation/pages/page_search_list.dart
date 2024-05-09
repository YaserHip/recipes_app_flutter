import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/search_by_name/cubit_search_by_name.dart';

import '../../../../core/approuter.dart';
import '../widgets/widget_error.dart';
import '../widgets/widget_loading.dart';
import '../widgets/widget_meal_recipe_item.dart';

class PageSearchList extends StatelessWidget {
  final String name;

  const PageSearchList({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    context.read<CubitSearchByName>().fetchSearchByName(name);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Searched: $name',
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              shadows: [
                Shadow(
                    color: Colors.black12,
                    offset: Offset(0.1, 0.1),
                    blurRadius: 8)
              ]),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [_buildMealList()],
          ),
        ),
      ),
    );
  }

  _buildMealList() => BlocBuilder<CubitSearchByName, StateSearchByName>(
          builder: (context, state) {
        return switch (state) {
          StateSearchByNameInitial() => const SizedBox.shrink(),
          StateSearchByNameLoaded() =>
            LayoutBuilder(builder: (context, constraint) {
              return GridView.builder(
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  final item = state.data[index];

                  return WidgetMealRecipeItem(
                    onTap: () {
                      context.push(
                          '/${AppRoutes.pageMealDetails.name}/${item.id}');
                    },
                    name: item.strMeal,
                    urlImage: item.strMealThumb,
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: constraint.maxWidth ~/ 180),
              );
            }),
          StateSearchByNameLoading() =>
            const WidgetLoading(height: 160, width: double.infinity),
          StateSearchByNameError() => state.message.contains('null value')
              ? const Column(
                  children: [
                    SizedBox(
                      height: 28,
                    ),
                    Center(
                      child: Text('There were no results for the search.'),
                    )
                  ],
                )
              : WidgetError(
                  message: state.message,
                ),
        };
      });
}
