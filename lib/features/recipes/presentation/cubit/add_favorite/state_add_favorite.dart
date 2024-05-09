part of 'cubit_add_favorite.dart';

sealed class StateAddFavorite {}

class StateAddFavoriteInitial extends StateAddFavorite {}

class StateAddFavoriteLoading extends StateAddFavorite {}

class StateAddFavoriteLoaded extends StateAddFavorite {}

class StateAddFavoriteError extends StateAddFavorite {
  final String message;

  StateAddFavoriteError(this.message);
}
