part of 'cubit_meal_banner.dart';

sealed class StateMealBanner {}

class StateMealBannerInitial extends StateMealBanner {}

class StateMealBannerLoading extends StateMealBanner {}

class StateMealBannerLoaded extends StateMealBanner {
  final List<EntityMealDetails> data;

  StateMealBannerLoaded(this.data);
}

class StateMealBannerError extends StateMealBanner {
  final String message;

  StateMealBannerError(this.message);
}
