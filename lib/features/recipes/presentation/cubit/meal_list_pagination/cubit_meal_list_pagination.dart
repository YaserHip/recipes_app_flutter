import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_get_seven_random_meals.dart';

part 'state_meal_list_pagination.dart';

class CubitMealListPagination extends Cubit<StateMealListPagination> {
  final UseCaseGetSevenRandomMeals getSevenRandomMeals;
  List<EntityMealDetails> data = [];

  CubitMealListPagination({required this.getSevenRandomMeals})
      : super(StateMealListPaginationInitial());

  void getRandomMeals() async {
    try {
      emit(StateMealListPaginationLoading(data));
      final response = await getSevenRandomMeals();

      response.fold((l) => emit(StateMealListPaginationError(l.message)), (r) {
        data.addAll(r);
        emit(StateMealListPaginationLoaded(data));
      });
    } catch (e) {
      emit(StateMealListPaginationError(e.toString()));
    }
  }
}
