import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app_flutter/core/approuter.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/categories_list/cubit_categories_list.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_banner/cubit_meal_banner.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/cubit/meal_list_pagination/cubit_meal_list_pagination.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/widgets/widget_category_item.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/widgets/widget_error.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/widgets/widget_loading.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/widgets/widget_meal_recipe_item.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/widgets/widget_recommendation_item.dart';
import 'package:recipes_app_flutter/features/recipes/presentation/widgets/widget_search_by_name.dart';

import '../../domain/entities/entities.dart';

// ignore: must_be_immutable
class PageHome extends StatelessWidget {
  List<EntityMealDetails> data = [];

  PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The Recipes',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, shadows: [
            Shadow(
                color: Colors.black12, offset: Offset(0.1, 0.1), blurRadius: 8)
          ]),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_sharp)),
          IconButton(
              onPressed: () {
                context.push(
                  '/${AppRoutes.pageUser.name}',
                );
              },
              icon: const Icon(Icons.person))
        ],
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollEndNotification) {
            if (notification.metrics.pixels ==
                notification.metrics.maxScrollExtent) {
              context.read<CubitMealListPagination>().getRandomMeals();
            }
          }
          return true;
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What do you want to\ncook today?',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const WidgetSearchByName(),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Categories',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildCategoriesBody(),
                  const SizedBox(height: 24),
                  const Text(
                    'Daily recommendations',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildDayleRecommendations(),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Recipes collection',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildMealList()
                  //create a new widget called bodyCategories (example)
                  //for every part of the app home that uses bloc for populating data.
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildCategoriesBody() =>
      BlocBuilder<CubitCategoriesList, StateCategoriesList>(
          builder: (context, state) {
        return switch (state) {
          StateCategoriesListInitial() => const SizedBox.shrink(),
          StateCategoriesListLoading() =>
            const WidgetLoading(height: 70, width: double.infinity),
          StateCategoriesListLoaded() => SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  final data = state.data[index];

                  return WidgetCategoryItem(
                      onTap: () {
                        context.push('/${AppRoutes.pageCategory.name}',
                            extra: data);
                      },
                      urlImage: data.strCategoryThumb,
                      name: data.strCategory);
                },
              ),
            ),
          StateCategoriesListError() => WidgetError(
              message: state.message,
            ),
        };
      });

  _buildDayleRecommendations() =>
      BlocBuilder<CubitMealBanner, StateMealBanner>(builder: (context, state) {
        return switch (state) {
          StateMealBannerInitial() => const SizedBox.shrink(),
          StateMealBannerLoading() =>
            const WidgetLoading(height: 160, width: double.infinity),
          StateMealBannerLoaded() => SizedBox(
              height: 160,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    final data = state.data[index];

                    return WidgetRecommendationItem(
                      onTap: () {
                        context.push(
                            '/${AppRoutes.pageMealDetails.name}/${data.idMeal}');
                      },
                      name: data.strMeal,
                      urlImage: data.strMealThumb,
                    );
                  }),
            ),
          StateMealBannerError() => WidgetError(
              message: state.message,
            ),
        };
      });

  _buildMealList() =>
      BlocBuilder<CubitMealListPagination, StateMealListPagination>(
          builder: (context, state) {
        return switch (state) {
          StateMealListPaginationInitial() => const SizedBox.shrink(),
          StateMealListPaginationLoaded() ||
          StateMealListPaginationLoading() =>
            LayoutBuilder(builder: (context, constraint) {
              if (state is StateMealListPaginationLoaded) {
                data = state.data;
              } else if (state is StateMealListPaginationLoaded) {
                data = state.data;
              }
              return Column(
                children: [
                  GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];

                      return WidgetMealRecipeItem(
                        onTap: () {
                          context.push(
                              '/${AppRoutes.pageMealDetails.name}/${item.idMeal}');
                        },
                        name: item.strMeal,
                        urlImage: item.strMealThumb,
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: constraint.maxWidth ~/ 180),
                  ),
                  if (state is StateMealListPaginationLoading)
                    const Center(
                      child: Column(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 16,
                          )
                        ],
                      ),
                    ),
                ],
              );
            }),
          StateMealListPaginationError() => WidgetError(
              message: state.message,
            ),
        };
      });
}
