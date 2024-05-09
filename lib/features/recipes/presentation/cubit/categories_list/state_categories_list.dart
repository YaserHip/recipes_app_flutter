part of 'cubit_categories_list.dart';

sealed class StateCategoriesList {}

class StateCategoriesListInitial extends StateCategoriesList {}

class StateCategoriesListLoading extends StateCategoriesList {}

class StateCategoriesListLoaded extends StateCategoriesList {
  final List<EntityMealCategory> data;

  StateCategoriesListLoaded(this.data);
}

class StateCategoriesListError extends StateCategoriesList {
  final String message;

  StateCategoriesListError(this.message);
}
