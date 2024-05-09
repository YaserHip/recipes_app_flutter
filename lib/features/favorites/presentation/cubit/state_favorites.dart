part of 'cubit_favorites.dart';

sealed class StateFavorites {}

class StateFavoritesInitial extends StateFavorites {}

class StateFavoritesLoading extends StateFavorites {}

class StateFavoritesLoaded extends StateFavorites {
  final List<ModelFavorite> data;

  StateFavoritesLoaded({required this.data});
}

class StateFavoritesError extends StateFavorites {
  final String message;

  StateFavoritesError({required this.message});
}
