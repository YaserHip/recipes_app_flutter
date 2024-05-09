part of 'cubit_meal_list_pagination.dart';

sealed class StateMealListPagination {}

class StateMealListPaginationInitial extends StateMealListPagination {}

class StateMealListPaginationLoading extends StateMealListPagination {
  final List<EntityMealDetails> data;

  StateMealListPaginationLoading(this.data);
}

class StateMealListPaginationLoaded extends StateMealListPagination {
  final List<EntityMealDetails> data;

  StateMealListPaginationLoaded(this.data);
}

class StateMealListPaginationError extends StateMealListPagination {
  final String message;

  StateMealListPaginationError(this.message);
}
