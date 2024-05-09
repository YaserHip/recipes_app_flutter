part of 'cubit_category_meal_list.dart';

sealed class StateCategoryMealList {}

class StateCategoryMealListInitial extends StateCategoryMealList {}

class StateCategoryMealListLoading extends StateCategoryMealList {}

class StateCategoryMealListLoaded extends StateCategoryMealList {
  final List<EntityMealPreview> data;

  StateCategoryMealListLoaded(this.data);
}

class StateCategoryMealListError extends StateCategoryMealList {
  final String message;

  StateCategoryMealListError(this.message);
}
