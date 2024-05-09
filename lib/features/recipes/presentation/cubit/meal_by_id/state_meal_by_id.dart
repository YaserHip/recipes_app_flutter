part of 'cubit_meal_by_id.dart';

sealed class StateMealById {}

class StateMealByIdInitial extends StateMealById {}

class StateMealByIdLoading extends StateMealById {}

class StateMealByIdLoaded extends StateMealById {
  final EntityMealDetails data;

  StateMealByIdLoaded(this.data);
}

class StateMealByIdError extends StateMealById {
  final String message;

  StateMealByIdError(this.message);
}
