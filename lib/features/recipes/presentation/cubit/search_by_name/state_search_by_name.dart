part of 'cubit_search_by_name.dart';

sealed class StateSearchByName {}

class StateSearchByNameInitial extends StateSearchByName {}

class StateSearchByNameLoading extends StateSearchByName {}

class StateSearchByNameLoaded extends StateSearchByName {
  final List<EntityMealPreview> data;

  StateSearchByNameLoaded(this.data);
}

class StateSearchByNameError extends StateSearchByName {
  final String message;

  StateSearchByNameError(this.message);
}
