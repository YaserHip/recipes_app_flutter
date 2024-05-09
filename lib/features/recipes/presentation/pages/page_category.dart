import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/category_meal_list/cubit_category_meal_list.dart';

import '../../../../core/approuter.dart';
import '../widgets/widget_error.dart';
import '../widgets/widget_loading.dart';
import '../widgets/widget_meal_recipe_item.dart';

class PageCategory extends StatelessWidget {
  final EntityMealCategory category;

  const PageCategory({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<CubitCategoryMealList>()
        .getMealListByCategory(category.strCategory);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Category',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, shadows: [
            Shadow(
                color: Colors.black12, offset: Offset(0.1, 0.1), blurRadius: 8)
          ]),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 32),
            child: Column(
              children: [
                _buildTopBanner(context),
                const SizedBox(
                  height: 24,
                ),
                _buildMealList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildTopBanner(BuildContext context) => Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(height: 70, category.strCategoryThumb),
              const SizedBox(
                width: 20,
              ),
              Text(
                category.strCategory,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onTertiaryContainer),
              )
            ],
          ),
        ),
      );

  _buildMealList() => BlocBuilder<CubitCategoryMealList, StateCategoryMealList>(
          builder: (context, state) {
        return switch (state) {
          StateCategoryMealListInitial() => const SizedBox.shrink(),
          StateCategoryMealListLoaded() =>
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
          StateCategoryMealListLoading() =>
            const WidgetLoading(height: 160, width: double.infinity),
          StateCategoryMealListError() => WidgetError(
              message: state.message,
            ),
        };
      });
}
