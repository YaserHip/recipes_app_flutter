import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_get_categories.dart';

part 'state_categories_list.dart';

class CubitCategoriesList extends Cubit<StateCategoriesList> {
  final UseCaseGetCategories getCategories;

  CubitCategoriesList({required this.getCategories})
      : super(StateCategoriesListInitial()) {
    getCategoriesList();
  }

  void getCategoriesList() async {
    try {
      emit(StateCategoriesListLoading());
      final response = await getCategories();

      response.fold((l) => emit(StateCategoriesListError(l.message)),
          (r) => emit(StateCategoriesListLoaded(r)));
    } catch (e) {
      emit(StateCategoriesListError(e.toString()));
    }
  }
}
