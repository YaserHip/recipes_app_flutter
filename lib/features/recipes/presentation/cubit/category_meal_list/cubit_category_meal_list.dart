import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_search_by_category.dart';

part 'state_category_meal_list.dart';

class CubitCategoryMealList extends Cubit<StateCategoryMealList> {
  final UseCaseSearchByCategory getSearchByCategory;

  CubitCategoryMealList({required this.getSearchByCategory})
      : super(StateCategoryMealListInitial());

  void getMealListByCategory(String name) async {
    try {
      emit(StateCategoryMealListLoading());
      final response = await getSearchByCategory(name);
      response.fold((l) => emit(StateCategoryMealListError(l.message)),
          (r) => emit(StateCategoryMealListLoaded(r)));
    } catch (e) {
      emit(StateCategoryMealListError(e.toString()));
    }
  }
}
