import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_get_meal_by_id.dart';

part 'state_meal_by_id.dart';

class CubitMealById extends Cubit<StateMealById> {
  final UseCaseGetMealById getMealById;
  CubitMealById({required this.getMealById}) : super(StateMealByIdInitial());

  void fetchMealDetails(String id) async {
    try {
      emit(StateMealByIdLoading());
      final response = await getMealById(id);
      response.fold((l) => emit(StateMealByIdError(l.message)),
          (r) => emit(StateMealByIdLoaded(r)));
    } catch (e) {
      emit(StateMealByIdError(e.toString()));
    }
  }
}
