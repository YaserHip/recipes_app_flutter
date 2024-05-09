import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app_flutter/features/recipes/domain/entities/entities.dart';
import 'package:recipes_app_flutter/features/recipes/domain/usecases/usecase_get_seven_random_meals.dart';

part 'state_meal_banner.dart';

class CubitMealBanner extends Cubit<StateMealBanner> {
  final UseCaseGetSevenRandomMeals getSevenRandomMeals;

  CubitMealBanner({required this.getSevenRandomMeals})
      : super(StateMealBannerInitial());

  void getRandomMeals() async {
    try {
      emit(StateMealBannerLoading());
      final response = await getSevenRandomMeals();

      response.fold((l) => emit(StateMealBannerError(l.message)),
          (r) => emit(StateMealBannerLoaded(r)));
    } catch (e) {
      emit(StateMealBannerError(e.toString()));
    }
  }
}
